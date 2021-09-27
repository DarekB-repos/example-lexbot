# Slots first

resource "aws_lex_bot" "bge_lex_help_bot" {
    name                            = "bge_lex_help_bot"
    locale                          = "en-GB"
    create_version                  = "true"
    child_directed                  = false
    enable_model_improvements       = true
    process_behavior               = "BUILD"
    voice_id                        = "Amy"

    abort_statement {
        message {
            content      = "Sorry, I could not understand. Goodbye."
            content_type = "PlainText"
        }
    }

    clarification_prompt {
        max_attempts = 5

        message {
            content      = "Sorry, can you please repeat that?"
            content_type = "PlainText"
        }
    }

}


resource "aws_lex_bot" "bot" {


    intent {
        intent_name    = "AccountApp"
        intent_version = "7"
    }
    intent {
        intent_name    = "AccountDetails"
        intent_version = "4"
    }
    intent {
        intent_name    = "AccountFinal"
        intent_version = "7"
    }

    timeouts {}
}