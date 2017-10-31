module UtilSupport
  class Mobile
    # 电信
    CHINA_T = %w{133 1349 149 153 173 177 180 181 189}
    # 联通
    CHINA_U = %w{130 131 132 145 155 156 171 175 176 185 186}
    # 移动
    CHINA_M = %w{134 135 136 137 138 139 147 150 151 152 157 158 159 178 182 183 184 187 188}
    # 虚拟运营商
    CHINA_V = %w{170}
    # 所有号段
    CHINA_ALL = [CHINA_T, CHINA_U, CHINA_M, CHINA_V].flatten
    CHINA_MAP = %w(china_t china_u china_m china_v).inject({}) do |map, operator|
      map.merge! const_get(operator.upcase).product([operator]).to_h
    end

    attr_reader :mobile

    def initialize(mobile)
      @mobile = mobile.to_s.strip.sub(/^\+?86/, '').strip.sub(/^\+?853/, '').strip
    end

    # 手机前缀
    def prefix(num=3)
      mobile[0, num]
    end

    # 手机号类型
    def mobile_type
      return nil unless allowed_format?
      CHINA_MAP[prefix(4)] || CHINA_MAP[prefix] || CHINA_MAP[prefix(1)]
    end

    # 无效手机号
    def invalid?
      !(allowed_format? && (CHINA_ALL.include?(prefix) || CHINA_ALL.include?(prefix(1))))
    end

    def to_s
      @mobile
    end

    # 脱敏输出
    def to_fuzzy
      "#{prefix}****#{mobile[-4, 4]}"
    end

    def allowed_format?
      /^1\d{10}$/ === mobile || /^6\d{7}$/ === mobile
    end

    %w(china_t china_u china_m china_v).each do |operator|
      define_method("#{operator}?") do
        mobile_type == operator
      end
    end

    def self.valid?(mobile)
      mobile = mobile.to_s
      (/^1\d{10}$/ === mobile || /^6\d{7}$/ === mobile) &&
        (CHINA_ALL.include?(mobile[0, 3]) || CHINA_ALL.include?(mobile[0, 1]))
    end
  end
end
