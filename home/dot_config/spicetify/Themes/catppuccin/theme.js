(async function catppuccin() {
    if (
        !(
            Spicetify.Platform &&
            Spicetify.React &&
            Spicetify.ReactDOM &&
            Spicetify.Config &&
            Spicetify.Platform.History
        )
    ) {
        setTimeout(catppuccin, 100);
        return;
    }

    const accents = ["mauve"];

    const Section = Spicetify.React.memo(() => {
        const colorScheme = Spicetify.Config.color_scheme || "mocha";
        const [selectedValue, setSelectedValue] =
            Spicetify.React.useState("mauve");

        Spicetify.React.useEffect(() => {
            const properties = {
                "--spice-text": `var(--spice-${selectedValue})`,
                "--spice-button-active": `var(--spice-${selectedValue})`,
                "--spice-equalizer": document.querySelector(
                    "body > script.marketplaceScript",
                )
                    ? `url('https://github.com/catppuccin/spicetify/blob/main/catppuccin/assets/${colorScheme}/equalizer-animated-mauve.gif?raw=true')`
                    : `url('${colorScheme}/equalizer-animated-mauve.gif')`,
            };

            Object.entries(properties).forEach(([property, value]) => {
                document.documentElement.style.setProperty(property, value);
            });
        }, [selectedValue]);

        return Spicetify.React.createElement(
            "div",
            { className: "x-settings-section" },
            [
                Spicetify.React.createElement(
                    "h2",
                    {
                        "data-encore-id": "type",
                        className:
                            "TextElement-bodyMediumBold-textBase-text encore-text-body-medium-bold",
                    },
                    "Catppuccin",
                ),
                Spicetify.React.createElement(
                    "div",
                    { className: "x-settings-row" },
                    [
                        Spicetify.React.createElement(
                            "div",
                            { className: "x-settings-firstColumn" },
                            [
                                Spicetify.React.createElement(
                                    "label",
                                    {
                                        htmlFor:
                                            "desktop.settings.selectLanguage",
                                        className:
                                            "TextElement-bodySmall-textSubdued-text encore-text-body-small",
                                        "data-encore-id": "type",
                                    },
                                    "Choose an accent color",
                                ),
                            ],
                        ),
                        Spicetify.React.createElement(
                            "div",
                            { className: "x-settings-secondColumn" },
                            [
                                Spicetify.React.createElement("span", null, [
                                    Spicetify.React.createElement(
                                        "select",
                                        {
                                            className: "main-dropDown-dropDown",
                                            id: "desktop.settings.selectLanguage",
                                            dir: "auto",
                                            value: selectedValue,
                                            onChange: (event) => {
                                                setSelectedValue(
                                                    event.target.value,
                                                );
                                            },
                                        },
                                        accents.map((option) => {
                                            return Spicetify.React.createElement(
                                                "option",
                                                {
                                                    key: option,
                                                    value: option,
                                                    selected:
                                                        option ===
                                                        selectedValue,
                                                },
                                                option,
                                            );
                                        }),
                                    ),
                                ]),
                            ],
                        ),
                    ],
                ),
            ],
        );
    });

    function insertOption(name) {
        if (name !== "/preferences") return;

        const checkHeaderInterval = setInterval(() => {
            const header = document.querySelector(
                "[data-testid='settings-page'] > div:first-of-type, .x-settings-headerContainer",
            );

            if (header) {
                clearInterval(checkHeaderInterval);

                const sectionContainer = document.createElement("div");
                Spicetify.ReactDOM.render(
                    Spicetify.React.createElement(Section),
                    sectionContainer,
                );
                header.parentNode.insertBefore(
                    sectionContainer,
                    header.nextSibling,
                );
            }
        }, 1);
    }

    Spicetify.ReactDOM.render(
        Spicetify.React.createElement(Section),
        document.createElement("div"),
    );

    insertOption(Spicetify.Platform.History.location?.pathname);
    Spicetify.Platform.History.listen((event) => {
        insertOption(event.pathname);
    });
})();
