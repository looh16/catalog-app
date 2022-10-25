require './app'

class Main

    def run()
        @app = App.new
        options
    end

    def options
        print 'Welcome to Catalog App!'
        while @output != 13
        print "\nPlease choose an option by entering a number: \n\n"
        print "1 -  List all books\n"
        print "2 -  List all music albums\n"
        print "3 -  List all movies\n"
        print "4 -  List of games\n"
        print "5 -  List all genres (e.g 'Comedy', 'Thriller')\n"
        print "6 -  List all labels (e.g. 'Gift', 'New')\n"
        print "7 -  List all authors (e.g. 'Stephen King')\n"
        print "8 -  List all sources (e.g. 'From a friend', 'Online shop')\n"
        print "9 -  Add a book\n"
        print "10 - Add a music album\n"
        print "11 - Add a movie\n"
        print "12 - Add a game\n"
        print "13 - Exit\n"
        @app.start_app
        end
    end
end

main = Main.new
main.run