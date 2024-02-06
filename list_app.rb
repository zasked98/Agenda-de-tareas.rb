require "./list.rb"
require "./item.rb"

class ListApp
    attr_writer :list

    def initialize
        @list = List.new
    end

    def run
        puts "Bienvenido a nuestra lista de tareas"
        loop do
            puts "a - agregar un tarea"
            puts "r - remover una tarea"
            puts "v - mostrar todas las tareas"
            puts "m - marcar una tarea"
            puts "b - borrar todas las tareas"
            puts "s - salir de la aplicacion"
            input = gets.chomp

            case input
            when 'a'
                puts "Ingrese la tarea:"
                 item = gets.chomp
                 @list.add_item(item)
                 puts "Tarea agregada: #{item}"
            when 'r'
                 puts "elije el numero de la tarea que deseas remover"
                 index = gets.chomp
                 @list.remove_item(index.to_i)
                puts "tarea removida con exito"
            when 'm'
                puts "elije el numero de la tarea que deseas marcar"
                 index = gets.chomp
                 @list.check_item(index.to_i)
                 puts "articulo marcado con exito"

            when 'b'
                puts "deseas remover todas las tareas? s/n"
            input = gets.chomp
            if input == 's'
                @list.remove_all
                puts "tareas borradas con exito"
            else
                puts "operacion cancelada"
            end
            when 'v'
                @list.show_all
            when 's'
                break
            end
        end
         puts "gracias por utilizar nuestra aplicacion  By Matias ariel rosales amoresano"
    end
end

list_app = ListApp.new
list_app.run

