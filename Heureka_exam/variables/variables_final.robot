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
${Speakers_from_40_to_100euro}    https://reprosustavy-a-reproduktory.heureka.sk/f:p:40-100/

${Price_of_1_product_from_basket}    xpath:(//div[@class="c-product-card__price u-bold"])[1]
${Price_of_2_product_from_basket}    xpath:(//div[@class="c-product-card__price u-bold"])[2]
${Price_of_3_product_from_basket}    xpath:(//div[@class="c-product-card__price u-bold"])[3]
${Remove_X_btn_1}    xpath:(//a[@class="c-product-card__close c-modal__toggle js-modal__toggle e-action"])[1]
${Remove_X_btn_2}    xpath:(//a[@class="c-product-card__close c-modal__toggle js-modal__toggle e-action"])[2]
${Remove_X_btn_3}    xpath:(//a[@class="c-product-card__close c-modal__toggle js-modal__toggle e-action"])[3]
${Confrim_Remove}    xpath://*[@id="snippet--cart-content-data"][contains(., 'Odstrániť z košíka')]
 #xpath:(//a[contains(text(),'Odstrániť z košíka')])[1]
 xpath:(//a[contains(text(),'Odstrániť z košíka')])[1]
 xpath://a[contains@class, '_negative'][contains(., 'Odstrániť z košíka')]
 //*[@id="snippet--cart-content-data"]/div[4]/div/div/div[1]/section/div/footer/a


${counter}
${space}
@{}

${Basket}    https://www.heureka.sk/kosik/
${Kosik_pocet}    xpath://li[@class="c-user-controls__item c-user-controls__item--cart"]//span[@class="c-user-controls__icon-container"]
#${Kosik_suma1}    xpath://*[@id="snippet--cart-content-data"]/div[3]/div[1]/div/div[2]/div[2]/div[2]
${Vymaz_1_Item}    xpath://*[@id="snippet--cart-content-data"]/div[3]/div[1]/div/div[1]/a/svg/use
${PotvrdZmazanie}    xpath://*[@id="snippet--cart-content-data"]/div[3]/div[1]/div/div[1]/section/div/footer/a
${Vymaz_2_Item}      xpath://*[@id="snippet--cart-content-data"]/div[3]/div[2]/div/div[1]/a/svg
${Vymaz_3_Item}      //*[@id="snippet--cart-content-data"]/div[4]/div/div/div[1]/a/svg

