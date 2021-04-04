class User < ApplicationRecord
    def disp_name
        if age > 19
            "#{name}さん"
        elsif age > 14
            "#{name}君"
        elsif age > 0
            "#{name}ちゃん"
        else
            "不正な値です"
        end
    end
end
