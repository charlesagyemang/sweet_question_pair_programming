
module Anthony
    def name
        "Anthony"  
    end
end

module Martha
    def name
        "Martha"
    end
end

module Ishmael
    def name
        "Ishmael"
    end
end

module Emeka
    def name
        "Emeka"
    end
end


class Main

    include Anthony
    extend  Martha
    prepend Emeka
    extend  Ishmael

    def name
        "Main"
    end
end

class MainTwo

    include Anthony
    extend  Martha

    def name
        "MainTwo"
    end
end


class MainThree
    include Anthony
    extend  Martha
end


class MainFour

    extend  Martha

end