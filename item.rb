class Item
    attr_writer :text, :checked

    def initialize(text="")
        @text = text
        @cheked = false
    end

    def to_s
        if @checked
            "[x] " + @text
        else
            "[ ] " + @text
        end
    end

end
