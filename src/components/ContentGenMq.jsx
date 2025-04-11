import './styles/ContentGenMq.css'

export default function ContentGenMq({title, description, buttons=['NA', 'NA'], optionalStyle, miniTitle=undefined}) {
    if(optionalStyle === 'whitestyle') {
        return(
            <section class="textTwo">
            <div class="conText">
                <h6>{miniTitle}</h6>
                <h1>{title}</h1>
                <p>{description}</p>
                {buttons.map((item, index) => {
                    return(
                        <button key={index}>{item}</button>
                    )
                })}
            </div>
            <div class="conTextTwo">
                <img src="" alt="" />
            </div>
        </section>
        )} else {
            return(
                <section class="textOne">
                    <div class="conText">
                        <h1>{title}</h1>
                        <p>{description}</p>
                        {buttons.map((item, index) => {
                            return(
                                <button key={index}>{item}</button>
                            )
                        })}
                    </div>
                    <div class="conTextTwo">
        
                    </div>
                </section>
            )
        }
}
