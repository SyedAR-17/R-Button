#' rvsButton: Custom button component
#'
#' A custom button component with specific styling and behavior.
#'
#' @param inputId The input ID.
#' @param label The button label.
#' @param icon An optional icon for the button.
#' @param style An optional CSS style.
#'
#' @return An HTML button with specified styling and behavior.
#'
#' @export
rsvButton <- function(inputId, label, icon = NULL, style = NULL) {
  html <- paste0(
    '<button class="rsv-button" id="', inputId, '">',
    if (!is.null(icon)) icon, ' ', label,
    '</button>',
    '<script>
      // Track the number of clicks
      var clickCount = 0;

      document.querySelector(".rsv-button").addEventListener("click", function() {
        clickCount++;
        if (clickCount % 1 === 0) {
          alert("This is an alert on every second click!");
        }
      });
    </script>',
    '<style>
      .rsv-button {
        width: 241.7px;
        height: 61.58px;
        background-color: #253F87;
        border-radius: 8px;
        border: none;
        color: #ffffff;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        line-height: 61.58px;
      }

      .rsv-button:focus {
        outline: none;
      }
    </style>'
  )

  HTML(html)
}
