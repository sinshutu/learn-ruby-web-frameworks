module Web
  module Controllers
    module Top
      class Create
        include Web::Action

        def call(params)
          Mailers::Welcome.deliver(format: :html)
        end
      end
    end
  end
end
