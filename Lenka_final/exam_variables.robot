*** Variables ***
#TLACIDLA
${tipy_na_darceky}    xpath://img[@alt="Tipy na darčeky"]
${par}    xpath://a[@data-label="Pár"]
${vianoce}    xpath://a[@data-name="Vianoce"]
${filter_cena_20-40}    xpath://label[contains(@class, 'checkbox')][@for="40-100"]
${stolove_hry}    xpath://a[@title="Reprosústavy a reproduktory"][contains(@class, 'heading category')]
${prvy_produkt}    xpath://img[@alt="ADC Blackfire Pán prstenů: Putování po Středozemi"]
${druhy_produkt}    xpath://img[@alt="Albi Catan Big Box"]
${treti_produkt}    xpath://img[@alt="Albi Scythe: Základní hra"]
#${kupit_na_heureke}    xpath://button[contains(@class, 'c-top__buy')][contains(., 'Kúpiť na Heureke')]
${kupit_na_heureke}    xpath://div[contains(@class, '__buy')][contains(., 'Kúpiť na Heureke')]
#${kupit_na_heureke}    xpath://div[@class="js-cart c-top-position__buy"]
#${kupit_na_heureke}    xpath://div[@class="c-top-offer__cart-button e-button e-button--highlight"]
${pokracovat_v_nakupe}    xpath://button[contains(., 'Pokračovať v nákupe')]
${nakupny_kosik}    //li[@class='c-user-controls__item c-user-controls__item--cart']
${mazaci_krizik}    xpath:(//a[@class="c-product-card__close c-modal__toggle js-modal__toggle e-action"])[1]
${potvrdenie_zmazania_produktu}    xpath:(//a[@class="e-button e-button--negative"])[1]

#TEXTOVE ELEMENTY
${tovar_pridany}    xpath://p[contains(., 'Tovar sme pridali do košíka')]
${nakupny_kosik_count}    xpath:${nakupny_kosik}//span[@class="c-user-controls__icon-container"]

#URLs
${stolove_hry_url}    null

#UKLADANIE HODNOT
${medzisucet}    0
@{list}
