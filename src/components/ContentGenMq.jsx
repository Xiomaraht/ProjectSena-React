import './styles/ContentGenMq.css'

export default function ContentGenMq({title, description, buttons=['NA', 'NA']}) {
    return (
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
