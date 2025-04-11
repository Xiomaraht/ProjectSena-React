import ContentGenMq from "./components/ContentGenMq";
import HeaderLg from "./components/HeaderLg";

export default function LandingPageMq() {
    return (
        <>
            <HeaderLg />
            <ContentGenMq title={'Thiiy Get Your werkace Thiew For PariL ito Noft'} description={'Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis tempore esse, numquam accusantium neque sapiente similique dolor earum unde quidem expedita animi alias odit? Laudantium exercitationem rem explicabo inventore non'} buttons={['Sign in', 'Sign Up']}/>
            <ContentGenMq title='Here you can find all for your pet' description='Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis tempore esse, numquam accusantium neque sapiente similique dolor earum unde quidem expedita animi alias odit? Laudantium exercitationem rem explicabo inventore non' buttons={['Services']} optionalStyle='whitestyle' miniTitle='Present'/>
        </>
    )
}
