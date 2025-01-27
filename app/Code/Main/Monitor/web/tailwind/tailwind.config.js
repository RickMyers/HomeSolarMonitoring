/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ['../../**/*.{twig,tpl,html,blade,savant,tbs,latte}'],
  theme: {
    screens: {
        sm: '480px',
        md: '768px',
        lg: '976px',
        xl: '1440px'
    },
    extend: {
        colors: {
            brightRed: 'hsl(12,88%,59%)',
            transparent: 'transparent',
            current: 'currentColor',
            'white': '#ffffff',
            'purple': '#3f3cbb',
            'midnight': '#121063',
            'metal': '#565584',
            'tahiti': '#3ab7bf',
            'silver': '#ecebff',
            'bubble-gum': '#ff77e9',
            'bermuda': '#78dcca'            
        }
    },
  },
  plugins: [],
}

