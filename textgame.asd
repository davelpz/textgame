(defsystem "textgame"
  :version "0.1.0"
  :author ""
  :license ""
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description ""
  :in-order-to ((test-op (test-op "textgame/tests"))))

(defsystem "textgame/tests"
  :author ""
  :license ""
  :depends-on ("textgame"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for textgame"
  :perform (test-op (op c) (symbol-call :rove :run c)))
