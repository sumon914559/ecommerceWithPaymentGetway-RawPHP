<?php
/**
 * Class for adding Social Section Widget
 *
 * @package Acme Themes
 * @subpackage Beauty Studio
 * @since 1.0.0
 */
if ( ! class_exists( 'Beauty_Studio_Social' ) ) {

    class Beauty_Studio_Social extends WP_Widget {
        /*defaults values for fields*/

        private function defaults(){
            /*defaults values for fields*/
            $defaults = array(
                'unique_id'     => '',
                'title'         => '',
            );
            return $defaults;
        }

        function __construct() {
            parent::__construct(
                    /*Base ID of your widget*/
                    'beauty_studio_social',
                    /*Widget name will appear in UI*/
                    esc_html__('AT Social Section', 'beauty-studio'),
                    /*Widget description*/
                    array(
                            'description' => esc_html__( 'Show Social Buttons.', 'beauty-studio' )
                    )
            );
        }

        /*Widget Backend*/
        public function form( $instance ) {
            $instance   = wp_parse_args( (array) $instance, $this->defaults() );
            /*default values*/
            $unique_id  = esc_attr( $instance[ 'unique_id' ] );
            $title      = esc_attr( $instance[ 'title' ] );
	        ?>
            <p>
                <label for="<?php echo esc_attr( $this->get_field_id( 'unique_id' ) ); ?>"><?php esc_html_e( 'Section ID', 'beauty-studio' ); ?></label>
                <input class="widefat" id="<?php echo esc_attr( $this->get_field_id( 'unique_id' ) ); ?>" name="<?php echo esc_attr( $this->get_field_name( 'unique_id' ) ); ?>" type="text" value="<?php echo $unique_id; ?>" />
                <br />
                <small><?php esc_html_e('Enter a Unique Section ID. You can use this ID in Menu item for enabling One Page Menu.','beauty-studio')?></small>
            </p>
            <p>
                <label for="<?php echo esc_attr( $this->get_field_id( 'title' ) ); ?>"><?php esc_html_e( 'Title', 'beauty-studio' ); ?></label>
                <input class="widefat" id="<?php echo esc_attr( $this->get_field_id( 'title' ) ); ?>" name="<?php echo esc_attr( $this->get_field_name( 'title' ) ); ?>" type="text" value="<?php echo $title; ?>" />
            </p>
            <p>
                <?php
                printf( esc_html__( 'Add/Edit Social Icons from %1$s Here %2$s ', 'beauty-studio' ), '<a target="_blank" href="'.esc_url( admin_url( 'customize.php' ) ).'?autofocus[section]=beauty-studio-social-options'.'" class="button button-primary">','</a>' );
                ?>
            </p>
            <?php
        }

        /**
         * Function to Updating widget replacing old instances with new
         *
         * @access public
         * @since 1.0.0
         *
         * @param array $new_instance new arrays value
         * @param array $old_instance old arrays value
         * @return array
         *
         */
        public function update( $new_instance, $old_instance ) {
            $instance = $old_instance;
            $instance[ 'unique_id' ]    = sanitize_key( $new_instance[ 'unique_id' ] );
            $instance[ 'title' ]        = sanitize_text_field( $new_instance[ 'title' ] );
	        return $instance;
        }

        /**
         * Function to Creating widget front-end. This is where the action happens
         *
         * @access public
         * @since 1.0.0
         *
         * @param array $args widget setting
         * @param array $instance saved values
         * @return void
         *
         */
        public function widget($args, $instance) {
            $instance = wp_parse_args( (array) $instance, $this->defaults());

            /*default values*/
            $unique_id  = !empty( $instance[ 'unique_id' ] ) ? esc_attr( $instance[ 'unique_id' ] ) : esc_attr( $this->id );
            $title      = apply_filters( 'widget_title', !empty( $instance['title'] ) ? $instance['title'] : '', $instance, $this->id_base );

            echo $args['before_widget'];

	        $animation = "init-animate zoomIn";
            ?>
            <section id="<?php echo $unique_id;?>" class="at-widgets at-social">
                <div class="container">
	                <?php
	                if( !empty( $title ) ) {
		                echo $args['before_title'] .esc_html( $title ).$args['after_title'];
	                }
	                ?>
                    <div class="row">
                        <div class="col-sm-12 <?php echo $animation; ?>">
                            <?php
                            do_action('beauty_studio_action_social_links');
                            ?>
                        </div>
                    </div>
                </div>
            </section>
            <?php
            echo $args['after_widget'];
        }
    } // Class Beauty_Studio_Social ends here
}