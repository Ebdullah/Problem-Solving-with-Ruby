# Problem 18: Implement Observer Pattern Implement the Observer pattern with a Subject
# class and an Observer module. Notify observers when the state changes.


module Observer
    def notify(state)
        puts "change has been observed"
    end
end
class Subject
    include Observer
    def initialize
        @observers = []
        @state = 0
    end

    def add_observer(observer)
        @observers << observer
    end

    def remove_observer(observer)
        @observers.delete(observer)
    end

    def notify_observers
        @observers.each do |observer|
            observer.notify(@state)
        end
    end

    def state=(new_state)
        @state = new_state
        notify_observers
    end

    def state
        @state
    end

end


class ConcreteObserver
    include Observer
end

subject = Subject.new

observer1 = ConcreteObserver.new
observer2 = ConcreteObserver.new

subject.add_observer(observer1)
subject.add_observer(observer2)

subject.state = 1
subject.remove_observer(observer1)
subject.state = 2 