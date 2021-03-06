classdef wait_move_handle

    properties
        class_instance
        start_time
    end

    methods

        function self = wait_move_handle(class_instance)
            self.class_instance = class_instance;
            self.start_time = rostime('now');
        end

        function result = wait(self, is_busy)
            if nargin == 1
                is_busy = false;
            end
            result = self.class_instance.wait_for_busy(is_busy, self.start_time);
        end
    end

end
