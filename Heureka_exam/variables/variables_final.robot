*** Variables ***
${Tips_for_gifts}    xpath://img[@alt="Tipy na darčeky"]
${Category_man}    xpath://a[@data-label="Muž"]
${Category_Christmas}    xpath://a[@data-name="Vianoce"]
${Price_range_40-100}     xpath://label[contains(@class, 'checkbox')][@for="40-100"]
${Category_Speakers}    xpath://a[@title="Reprosústavy a reproduktory"][contains(@class, 'heading category')]

${JBLControlOne}    xpath://img[@alt="JBL Control One"]
${JBLControlOne_Buy_on_Heureka}    xpath://div[contains(@class, '__buy')][contains(., 'Kúpiť na Heureke')]

${Samsung_SWA_8500}    xpath://img[@alt="Samsung SWA-8500"]
${Samsung_SWA_8500_Buy_on_Heureka}    xpath://div[contains(@class, '__buy')][contains(., 'Kúpiť na Heureke')]

${Creative_SBS_E2900}    xpath://img[@alt="Creative SBS E2900"]
${Creative_SBS_E2900_Buy_on_Heureka}    xpath://div[contains(@class, '__buy')][contains(., 'Kúpiť na Heureke')]
${Creative_SBS_E2900_Buy2_on_Heureka}    xpath:(//button[@class='c-variant__button js-cart__submit js-offscreen__toggle e-button e-button--highlight u-micro'])[1]
${Speakers_from_40_to_100euro}    https://reprosustavy-a-reproduktory.heureka.sk/f:p:40-100/

${Basket}    https://www.heureka.sk/kosik/
${Basket_item_count}     xpath://li[@class='c-user-controls__item c-user-controls__item--cart']//span[@class="c-user-controls__icon-container"]
${Price_of_1_product_from_basket}    xpath:(//div[@class="c-product-card__price u-bold"])[1]
${Price_of_2_product_from_basket}    xpath:(//div[@class="c-product-card__price u-bold"])[2]
${Price_of_3_product_from_basket}    xpath:(//div[@class="c-product-card__price u-bold"])[3]
${Remove_X_btn_1}    xpath:(//a[@class="c-product-card__close c-modal__toggle js-modal__toggle e-action"])[1]
${Remove_X_btn_2}    xpath:(//a[@class="c-product-card__close c-modal__toggle js-modal__toggle e-action"])[1]
${Remove_X_btn_3}    xpath:(//a[@class="c-product-card__close c-modal__toggle js-modal__toggle e-action"])[1]
${Name_of_product_from_basket}    xpath:(//span[@class="c-product-card__title"]/a)[1]

${Confrim_Remove}    xpath:(//a[contains(text(),'Odstrániť z košíka')])[1]
# xpath:(//a[@class="e-button e-button--negative"])[1]
${Click_on_Confrim_pop-up}     xpath:(//a[@class="e-button e-button--negative"])[1]/parent::*

${counter}
${space}
