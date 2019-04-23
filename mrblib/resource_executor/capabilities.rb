module ::MItamae
  module Plugin
    module ResourceExecutor
      class Capabilities < ::MItamae::ResourceExecutor::Base
        def apply
          MItamae.logger.debug "#{@resource.resource_type}[#{@resource.resource_name}]"
          # TODO
        end

        private

        def set_current_attributes(current, action)
          # TODO
        end

        def set_desired_attributes(desired, action)
          case action
          when :present
            if desired.name.is_a?(Symbol)
              MItamae.logger.error 'required name attribute'
              exit 1
            end
          when :absent
            # TODO
          end
        end
      end
    end
  end
end
