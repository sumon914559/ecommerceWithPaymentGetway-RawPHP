<?php
/**
 * Beauty Studio sidebar layout options
 *
 * @since Beauty Studio  1.0.0
 *
 * @param null
 * @return array
 *
 */
if ( !function_exists('beauty_studio_sidebar_layout_options') ) :
    function beauty_studio_sidebar_layout_options() {
        $beauty_studio_sidebar_layout_options = array(
            'default-sidebar' => array(
                'value'     => 'default-sidebar',
                'thumbnail' => get_template_directory_uri() . '/acmethemes/images/default-sidebar.png'
            ),
            'left-sidebar' => array(
                'value'     => 'left-sidebar',
                'thumbnail' => get_template_directory_uri() . '/acmethemes/images/left-sidebar.png'
            ),
            'right-sidebar' => array(
                'value' => 'right-sidebar',
                'thumbnail' => get_template_directory_uri() . '/acmethemes/images/right-sidebar.png'
            ),
            'both-sidebar' => array(
	            'value' => 'both-sidebar',
	            'thumbnail' => get_template_directory_uri() . '/acmethemes/images/both-sidebar.png'
            ),
            'middle-col' => array(
	            'value'     => 'middle-col',
	            'thumbnail' => get_template_directory_uri() . '/acmethemes/images/middle-col.png'
            ),
            'no-sidebar' => array(
                'value'     => 'no-sidebar',
                'thumbnail' => get_template_directory_uri() . '/acmethemes/images/no-sidebar.png'
            )
        );
        return apply_filters( 'beauty_studio_sidebar_layout_options', $beauty_studio_sidebar_layout_options );
    }
endif;

/**
 * Custom Metabox
 *
 * @since Beauty Studio 1.0.0
 *
 * @param null
 * @return void
 *
 */
if( !function_exists( 'beauty_studio_meta_add_sidebar' )):
    function beauty_studio_meta_add_sidebar() {
        add_meta_box(
            'beauty_studio_sidebar_layout', // $id
            esc_html__( 'Sidebar Layout', 'beauty-studio' ), // $title
            'beauty_studio_meta_sidebar_layout_callback', // $callback
            'post', // $page
            'normal', // $context
            'high'
        ); // $priority

        add_meta_box(
            'beauty_studio_sidebar_layout', // $id
            esc_html__( 'Sidebar Layout', 'beauty-studio' ), // $title
            'beauty_studio_meta_sidebar_layout_callback', // $callback
            'page', // $page
            'normal', // $context
            'high'
        ); // $priority
    }
endif;
add_action('add_meta_boxes', 'beauty_studio_meta_add_sidebar');

/**
 * Callback function for metabox
 *
 * @since Beauty Studio 1.0.0
 *
 * @param null
 * @return void
 *
 */
if ( !function_exists('beauty_studio_meta_sidebar_layout_callback') ) :
    function beauty_studio_meta_sidebar_layout_callback(){
        global $post;
        $beauty_studio_sidebar_layout_options = beauty_studio_sidebar_layout_options();
        $beauty_studio_sidebar_layout = 'default-sidebar';
        $beauty_studio_sidebar_meta_layout = get_post_meta( $post->ID, 'beauty_studio_sidebar_layout', true );
        if( !beauty_studio_is_null_or_empty($beauty_studio_sidebar_meta_layout) ){
            $beauty_studio_sidebar_layout = $beauty_studio_sidebar_meta_layout;
        }
        wp_nonce_field( basename( __FILE__ ), 'beauty_studio_sidebar_layout_nonce' );
        ?>
        <table class="form-table page-meta-box">
            <tr>
                <td colspan="4"><h4><?php esc_html_e( 'Choose Sidebar Template', 'beauty-studio' ); ?></h4></td>
            </tr>
            <tr>
                <td>
                    <?php
                    foreach ($beauty_studio_sidebar_layout_options as $field) {
                        ?>
                        <div class="hide-radio radio-image-wrapper">
                            <input id="<?php echo esc_attr( $field['value'] ); ?>" type="radio" name="beauty_studio_sidebar_layout" value="<?php echo esc_attr( $field['value'] ); ?>" <?php checked( $field['value'], $beauty_studio_sidebar_layout ); ?>/>
                            <label class="description" for="<?php echo esc_attr( $field['value'] ); ?>">
                                <img src="<?php echo esc_url( $field['thumbnail'] ); ?>" />
                            </label>
                        </div>
                    <?php
                    } // end foreach
                    ?>
                    <div class="clear"></div>
                </td>
            </tr>
            <tr>
                <td><em class="f13"><?php esc_html_e( 'You can set up the sidebar content', 'beauty-studio' ); ?> <a href="<?php echo esc_url( admin_url('/widgets.php') ); ?>"><?php esc_html_e( 'here', 'beauty-studio' ); ?></a></em></td>
            </tr>
        </table>
    <?php
}
endif;

/**
 * save the custom metabox data
 * @hooked to save_post hook
 *
 * @since Beauty Studio 1.0.0
 *
 * @param null
 * @return void
 *
 */
if ( !function_exists('beauty_studio_save_sidebar_layout') ) :
    function beauty_studio_save_sidebar_layout( $post_id ) {

        /*
          * A Guide to Writing Secure Themes – Part 4: Securing Post Meta
          *https://make.wordpress.org/themes/2015/06/09/a-guide-to-writing-secure-themes-part-4-securing-post-meta/
          * */
        if (
            !isset( $_POST[ 'beauty_studio_sidebar_layout_nonce' ] ) ||
            !wp_verify_nonce( $_POST[ 'beauty_studio_sidebar_layout_nonce' ], basename( __FILE__ ) ) || /*Protecting against unwanted requests*/
            ( defined( 'DOING_AUTOSAVE' ) && DOING_AUTOSAVE ) || /*Dealing with autosaves*/
            ! current_user_can( 'edit_post', $post_id )/*Verifying access rights*/
        ){
            return;
        }

        //Execute this saving function
        if(isset($_POST['beauty_studio_sidebar_layout'])){
            $old = get_post_meta( $post_id, 'beauty_studio_sidebar_layout', true);
            $new = sanitize_text_field($_POST['beauty_studio_sidebar_layout']);
            if ($new && $new != $old) {
                update_post_meta($post_id, 'beauty_studio_sidebar_layout', $new);
            }
            elseif ('' == $new && $old) {
                delete_post_meta($post_id,'beauty_studio_sidebar_layout', $old);
            }
        }
    }
endif;
add_action('save_post', 'beauty_studio_save_sidebar_layout' );