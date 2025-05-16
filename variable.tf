variable "client_name" {
  type        = string
  description = "The name of the app"
}

variable "client_type" {
  type        = string
  description = "The type of the client. Allowed values: SINGLE_PAGE, REGULAR_WEB, NON_INTERACTIVE, IOS, ANDROID, WINDOWS_MOBILE, DESKTOP, MOBILE, DEVICE, THIRD_PARTY"
  default     = null
}

variable "accent_color" {
  type        = string
  description = "The accent color of the client. e.g., '#f7941d'. Must be a valid hex color."
  default     = null
}

variable "primary_color" {
  type        = string
  description = "The primary color of the client. e.g., '#ef4923'. Must be a valid hex color."
  default     = null
}

variable "media_type" {
  type        = string
  description = "The media type of the client. Allowed values: VIDEO, IMAGE"
  default     = null
}

variable "content_align" {
  type        = string
  description = "The alignment of the content of the client. Allowed values: CENTER, LEFT, RIGHT"
  default     = null
}

variable "allow_login_with" {
  type        = set(string)
  description = "Preferred methods of login allowed for a client. Allowed values: EMAIL, MOBILE, USER_NAME"
  default     = null
}

variable "redirect_uris" {
  type        = set(string)
  description = "Redirect URIs for OAuth2 client."
  default     = null
}

variable "allowed_logout_urls" {
  type        = set(string)
  description = "Allowed logout URLs for OAuth2 client."
  default     = null
}

variable "enable_deduplication" {
  type        = bool
  description = "Enable deduplication."
  default     = null
}

variable "auto_login_after_register" {
  type        = bool
  description = "Automatically login after registration."
  default     = null
}

variable "enable_passwordless_auth" {
  type        = bool
  description = "Enable passwordless authentication."
  default     = null
}

variable "register_with_login_information" {
  type        = bool
  description = "Register with login information."
  default     = null
}

variable "allow_disposable_email" {
  type        = bool
  description = "Allow disposable email addresses."
  default     = null
}

variable "validate_phone_number" {
  type        = bool
  description = "If enabled, phone number is validated."
  default     = null
}

variable "hosted_page_group" {
  type        = string
  description = "Hosted page group."
  default     = null
}

variable "client_display_name" {
  type        = string
  description = "The display name of the client."
  default     = null
}

variable "company_name" {
  type        = string
  description = "The name of the company that the client belongs to."
  default     = null
}

variable "company_address" {
  type        = string
  description = "The company address."
  default     = null
}

variable "company_website" {
  type        = string
  description = "The URL of the company website."
  default     = null
}

variable "allowed_scopes" {
  type        = set(string)
  description = "The allowed scopes for the client."
  default     = null
}

variable "response_types" {
  type        = set(string)
  description = "The response types of the client."
  default     = null
}

variable "grant_types" {
  type        = set(string)
  description = "The grant types of the client."
  default     = null
}

variable "login_providers" {
  type        = set(string)
  description = "Setup login provider to the client."
  default     = null
}

variable "additional_access_token_payload" {
  type        = set(string)
  description = "Access token payload definition."
  default     = null
}

variable "required_fields" {
  type        = set(string)
  description = "The required fields while registering to the client."
  default     = null
}

variable "is_hybrid_app" {
  type        = bool
  description = "Flag to set if your app is hybrid or not."
  default     = null
}

variable "allowed_web_origins" {
  type        = set(string)
  description = "List of the web origins allowed to access the client."
  default     = null
}

variable "allowed_origins" {
  type        = set(string)
  description = "List of the origins allowed to access the client."
  default     = null
}

variable "mobile_settings" {
  type = object({
    team_id      = optional(string)
    bundle_id    = optional(string)
    package_name = optional(string)
    key_hash     = optional(string)
  })
  description = "Mobile settings for the client."
  default     = null
}

variable "default_max_age" {
  type        = number
  description = "The default maximum age for the token in seconds."
  default     = null
}

variable "token_lifetime_in_seconds" {
  type        = number
  description = "The lifetime of the token in seconds."
  default     = null
}

variable "id_token_lifetime_in_seconds" {
  type        = number
  description = "The lifetime of the id_token in seconds."
  default     = null
}

variable "refresh_token_lifetime_in_seconds" {
  type        = number
  description = "The lifetime of the refresh token in seconds."
  default     = null
}

variable "template_group_id" {
  type        = string
  description = "The id of the template group to be configured for communication."
  default     = null
}

variable "client_id" {
  type        = string
  description = "The client_id is the unique identifier of the app."
  default     = null
}

variable "client_secret" {
  type        = string
  description = "The client_secret for the app."
  default     = null
}

variable "policy_uri" {
  type        = string
  description = "The URL to the policy of a client."
  default     = null
}

variable "tos_uri" {
  type        = string
  description = "The URL to the TOS of a client."
  default     = null
}

variable "imprint_uri" {
  type        = string
  description = "The URL to the imprint page."
  default     = null
}

variable "contacts" {
  type        = set(string)
  description = "The contacts of the client."
  default     = null
}

variable "token_endpoint_auth_method" {
  type        = string
  description = "The token endpoint authentication method."
  default     = null
}

variable "token_endpoint_auth_signing_alg" {
  type        = string
  description = "The token endpoint authentication signing algorithm."
  default     = null
}

variable "default_acr_values" {
  type        = set(string)
  description = "The default ACR values."
  default     = null
}

variable "web_message_uris" {
  type        = set(string)
  description = "A list of URLs for web messages used."
  default     = null
}

variable "social_providers" {
  type = list(object({
    provider_name = optional(string)
    social_id     = optional(string)
  }))
  description = "A list of social identity providers that users can authenticate with."
  default     = null
}

variable "custom_providers" {
  type = list(object({
    provider_name       = optional(string)
    display_name        = optional(string)
    logo_url            = optional(string)
    type                = optional(string)
    is_provider_visible = optional(bool)
    domains             = optional(set(string))
  }))
  description = "A list of custom identity providers that users can authenticate with."
  default     = null
}

variable "saml_providers" {
  type = list(object({
    provider_name       = optional(string)
    display_name        = optional(string)
    logo_url            = optional(string)
    type                = optional(string)
    is_provider_visible = optional(bool)
    domains             = optional(set(string))
  }))
  description = "A list of SAML identity providers that users can authenticate with."
  default     = null
}

variable "ad_providers" {
  type = list(object({
    provider_name       = optional(string)
    display_name        = optional(string)
    logo_url            = optional(string)
    type                = optional(string)
    is_provider_visible = optional(bool)
    domains             = optional(set(string))
  }))
  description = "A list of Active Directory identity providers that users can authenticate with."
  default     = null
}

variable "jwe_enabled" {
  type        = bool
  description = "Flag to specify whether JSON Web Encryption (JWE) should be enabled for encrypting data."
  default     = null
}

variable "user_consent" {
  type        = bool
  description = "Specifies whether user consent is required or not."
  default     = null
}

variable "allowed_groups" {
  type = list(object({
    group_id      = optional(string)
    roles         = optional(set(string))
    default_roles = optional(set(string))
  }))
  description = "Allowed groups for the client."
  default     = null
}

variable "operations_allowed_groups" {
  type = list(object({
    group_id      = optional(string)
    roles         = optional(set(string))
    default_roles = optional(set(string))
  }))
  description = "Operations allowed groups for the client."
  default     = null
}

variable "enabled" {
  type        = bool
  description = "Flag to enable or disable the client."
  default     = null
}

variable "allowed_fields" {
  type        = set(string)
  description = "Allowed fields for the client."
  default     = null
}

variable "smart_mfa" {
  type        = bool
  description = "Flag to enable smart MFA."
  default     = null
}

variable "allowed_mfa" {
  type        = set(string)
  description = "Allowed MFA methods for the client."
  default     = null
}

variable "captcha_ref" {
  type        = string
  description = "Captcha reference for the client."
  default     = null
}

variable "captcha_refs" {
  type        = set(string)
  description = "Captcha references for the client."
  default     = null
}

variable "consent_refs" {
  type        = set(string)
  description = "Consent references for the client."
  default     = null
}

variable "communication_medium_verification" {
  type        = string
  description = "Communication medium verification for the client."
  default     = null
}

variable "allowed_roles" {
  type        = set(string)
  description = "Allowed roles for the client."
  default     = null
}

variable "default_roles" {
  type        = set(string)
  description = "Default roles for the client."
  default     = null
}

variable "is_remember_me_selected" {
  type        = bool
  description = "Flag to select remember me by default."
  default     = null
}

variable "enable_bot_detection" {
  type        = bool
  description = "Flag to enable bot detection."
  default     = null
}

variable "bot_provider" {
  type        = string
  description = "Bot provider for the client."
  default     = null
}

variable "allow_guest_login_groups" {
  type = list(object({
    group_id      = optional(string)
    roles         = optional(set(string))
    default_roles = optional(set(string))
  }))
  description = "Allowed guest login groups for the client."
  default     = null
}

variable "is_login_success_page_enabled" {
  type        = bool
  description = "Flag to enable login success page."
  default     = null
}

variable "is_register_success_page_enabled" {
  type        = bool
  description = "Flag to enable register success page."
  default     = null
}

variable "group_ids" {
  type        = set(string)
  description = "Group IDs for the client."
  default     = null
}

variable "group_selection" {
  type = object({
    always_show_group_selection = optional(bool)
    selectable_groups           = optional(set(string))
    selectable_group_types      = optional(set(string))
  })
  description = "Group selection settings for the client."
  default     = null
}

variable "group_types" {
  type        = set(string)
  description = "Group types for the client."
  default     = null
}

variable "backchannel_logout_uri" {
  type        = string
  description = "Backchannel logout URI for the client."
  default     = null
}

variable "post_logout_redirect_uris" {
  type        = set(string)
  description = "Post logout redirect URIs for the client."
  default     = null
}

variable "logo_align" {
  type        = string
  description = "Logo alignment for the client. Allowed values: CENTER, LEFT, RIGHT"
  default     = null
}

variable "mfa" {
  type = object({
    setting                  = optional(string)
    time_interval_in_seconds = optional(number)
    allowed_methods          = optional(set(string))
  })
  description = "MFA settings for the client."
  default     = null
}

variable "webfinger" {
  type        = string
  description = "Webfinger for the client."
  default     = null
}

variable "logo_uri" {
  type        = string
  description = "Logo URI for the client."
  default     = null
}

variable "initiate_login_uri" {
  type        = string
  description = "Initiate login URI for the client."
  default     = null
}

variable "registration_client_uri" {
  type        = string
  description = "Registration client URI for the client."
  default     = null
}

variable "registration_access_token" {
  type        = string
  description = "Registration access token for the client."
  default     = null
}

variable "client_uri" {
  type        = string
  description = "Client URI for the client."
  default     = null
}

variable "jwks_uri" {
  type        = string
  description = "JWKS URI for the client."
  default     = null
}

variable "jwks" {
  type        = string
  description = "JWKS for the client."
  default     = null
}

variable "sector_identifier_uri" {
  type        = string
  description = "Sector identifier URI for the client."
  default     = null
}

variable "subject_type" {
  type        = string
  description = "Subject type for the client."
  default     = null
}

variable "id_token_signed_response_alg" {
  type        = string
  description = "ID token signed response algorithm for the client."
  default     = null
}

variable "id_token_encrypted_response_alg" {
  type        = string
  description = "ID token encrypted response algorithm for the client."
  default     = null
}

variable "id_token_encrypted_response_enc" {
  type        = string
  description = "ID token encrypted response encoding for the client."
  default     = null
}

variable "userinfo_signed_response_alg" {
  type        = string
  description = "Userinfo signed response algorithm for the client."
  default     = null
}

variable "userinfo_encrypted_response_alg" {
  type        = string
  description = "Userinfo encrypted response algorithm for the client."
  default     = null
}

variable "userinfo_encrypted_response_enc" {
  type        = string
  description = "Userinfo encrypted response encoding for the client."
  default     = null
}

variable "request_object_signing_alg" {
  type        = string
  description = "Request object signing algorithm for the client."
  default     = null
}

variable "request_object_encryption_alg" {
  type        = string
  description = "Request object encryption algorithm for the client."
  default     = null
}

variable "request_object_encryption_enc" {
  type        = string
  description = "Request object encryption encoding for the client."
  default     = null
}

variable "request_uris" {
  type        = set(string)
  description = "Request URIs for the client."
  default     = null
}

variable "description" {
  type        = string
  description = "Description of the client."
  default     = null
}

variable "default_scopes" {
  type        = set(string)
  description = "Default scopes for the client."
  default     = null
}

variable "pending_scopes" {
  type        = set(string)
  description = "Pending scopes for the client."
  default     = null
}

variable "consent_page_group" {
  type        = string
  description = "Consent page group for the client."
  default     = null
}

variable "password_policy_ref" {
  type        = string
  description = "Password policy reference for the client."
  default     = null
}

variable "blocking_mechanism_ref" {
  type        = string
  description = "Blocking mechanism reference for the client."
  default     = null
}

variable "sub" {
  type        = string
  description = "Subject identifier for the client."
  default     = null
}

variable "role" {
  type        = string
  description = "Role for the client."
  default     = null
}

variable "mfa_configuration" {
  type        = string
  description = "MFA configuration for the client."
  default     = null
}

variable "suggest_mfa" {
  type        = set(string)
  description = "Suggested MFA methods for the client."
  default     = null
}

variable "login_spi" {
  type = object({
    oauth_client_id = optional(string)
    spi_url         = optional(string)
  })
  description = "Login SPI configuration for the client."
  default     = null
}

variable "background_uri" {
  type        = string
  description = "Background URI for the client."
  default     = null
}

variable "video_url" {
  type        = string
  description = "Video URL for the client."
  default     = null
}

variable "bot_captcha_ref" {
  type        = string
  description = "Bot captcha reference for the client."
  default     = null
}

variable "application_meta_data" {
  type        = map(string)
  description = "Application metadata for the client."
  default     = null
}

variable "allow_guest_login" {
  type        = bool
  description = "Flag to allow guest login for the client."
  default     = null
}

variable "require_auth_time" {
  type        = bool
  description = "Flag to require auth time for the client."
  default     = null
}

variable "enable_login_spi" {
  type        = bool
  description = "Flag to enable login SPI for the client."
  default     = null
}

variable "backchannel_logout_session_required" {
  type        = bool
  description = "Flag to require backchannel logout session for the client."
  default     = null
}

variable "suggest_verification_methods" {
  type = object({
    mandatory_config = optional(object({
      methods    = optional(set(string))
      range      = optional(string)
      skip_until = optional(string)
    }))
    optional_config = optional(object({
      methods = optional(set(string))
    }))
    skip_duration_in_days = optional(number)
  })
  description = "Suggested verification methods for the client."
  default     = null
}

variable "group_role_restriction" {
  type = object({
    match_condition = optional(string)
    filters = optional(list(object({
      group_id = optional(string)
      role_filter = optional(object({
        match_condition = optional(string)
        roles           = optional(set(string))
      }))
    })))
  })
  description = "Group role restrictions for the client."
  default     = null
}

variable "accept_roles_in_the_registration" {
  type        = bool
  description = "A boolean flag that determines whether roles can be accepted during the registration process."
  default     = null
}

variable "common_configs" {
  type = object({
    client_type         = optional(string)
    company_name        = optional(string)
    company_address     = optional(string)
    company_website     = optional(string)
    allowed_scopes      = optional(list(string))
    redirect_uris       = optional(list(string))
    allowed_logout_urls = optional(list(string))
    allowed_groups = optional(list(object({
      group_id      = string
      roles         = list(string)
      default_roles = list(string)
    })))
    primary_color                   = optional(string)
    media_type                      = optional(string)
    content_align                   = optional(string)
    allow_login_with                = optional(list(string))
    enable_deduplication            = optional(bool)
    auto_login_after_register       = optional(bool)
    enable_passwordless_auth        = optional(bool)
    register_with_login_information = optional(bool)
    allow_disposable_email          = optional(bool)
    validate_phone_number           = optional(bool)
    hosted_page_group               = optional(string)
    client_display_name             = optional(string)
    response_types                  = optional(list(string))
    grant_types                     = optional(list(string))
    login_providers                 = optional(list(string))
    additional_access_token_payload = optional(list(string))
    required_fields                 = optional(list(string))
    is_hybrid_app                   = optional(bool)
    allowed_web_origins             = optional(list(string))
    allowed_origins                 = optional(list(string))
    mobile_settings = optional(object({
      team_id      = optional(string)
      bundle_id    = optional(string)
      package_name = optional(string)
      key_hash     = optional(string)
    }))
    default_max_age                   = optional(number)
    token_lifetime_in_seconds         = optional(number)
    id_token_lifetime_in_seconds      = optional(number)
    refresh_token_lifetime_in_seconds = optional(number)
    template_group_id                 = optional(string)
    client_id                         = optional(string)
    client_secret                     = optional(string)
    saml_providers = optional(list(object({
      provider_name       = string
      display_name        = string
      logo_url            = optional(string)
      type                = string
      is_provider_visible = optional(bool)
      domains             = optional(list(string))
    })))
    ad_providers = optional(list(object({
      provider_name       = string
      display_name        = string
      logo_url            = optional(string)
      type                = string
      is_provider_visible = optional(bool)
      domains             = optional(list(string))
    })))
    jwe_enabled  = optional(bool)
    user_consent = optional(bool)
    operations_allowed_groups = optional(list(object({
      group_id      = string
      roles         = list(string)
      default_roles = list(string)
    })))
    enabled                             = optional(bool)
    allowed_fields                      = optional(list(string))
    smart_mfa                           = optional(bool)
    allowed_mfa                         = optional(list(string))
    captcha_ref                         = optional(string)
    captcha_refs                        = optional(list(string))
    consent_refs                        = optional(list(string))
    communication_medium_verification   = optional(string)
    allowed_roles                       = optional(list(string))
    default_roles                       = optional(list(string))
    is_remember_me_selected             = optional(bool)
    enable_bot_detection                = optional(bool)
    bot_provider                        = optional(string)
    allow_guest_login_groups = optional(list(object({
      group_id      = string
      roles         = list(string)
      default_roles = list(string)
    })))
    is_login_success_page_enabled    = optional(bool)
    is_register_success_page_enabled = optional(bool)
    group_ids                        = optional(list(string))
    group_selection = optional(object({
      always_show_group_selection = optional(bool)
      selectable_groups           = optional(list(string))
      selectable_group_types      = optional(list(string))
    }))
    group_types                     = optional(list(string))
    backchannel_logout_uri          = optional(string)
    post_logout_redirect_uris       = optional(list(string))
    userinfo_signed_response_alg    = optional(string)
    userinfo_encrypted_response_alg = optional(string)
    userinfo_encrypted_response_enc = optional(string)
    request_object_signing_alg      = optional(string)
    request_object_encryption_alg   = optional(string)
    request_object_encryption_enc   = optional(string)
    request_uris                    = optional(list(string))
    description                     = optional(string)
    default_scopes                  = optional(list(string))
    pending_scopes                  = optional(list(string))
    consent_page_group              = optional(string)
    password_policy_ref             = optional(string)
    blocking_mechanism_ref          = optional(string)
    sub                             = optional(string)
    role                            = optional(string)
    mfa_configuration               = optional(string)
    suggest_mfa                     = optional(list(string))
    login_spi = optional(object({
      oauth_client_id = optional(string)
      spi_url         = optional(string)
    }))
    background_uri        = optional(string)
    video_url             = optional(string)
    bot_captcha_ref       = optional(string)
    application_meta_data = optional(map(string))
    allow_guest_login     = optional(bool)
    group_role_restriction = optional(object({
      match_condition = optional(string)
      filters = optional(list(object({
        group_id = string
        role_filter = object({
          match_condition = string
          roles           = list(string)
        })
      })))
    }))
    mfa = optional(object({
      setting                  = optional(string)
      time_interval_in_seconds = optional(number)
      allowed_methods          = optional(list(string))
    }))
    social_providers = optional(list(object({
      provider_name = optional(string)
      social_id     = optional(string)
    })))
    custom_providers = optional(list(object({
      provider_name       = optional(string)
      display_name        = optional(string)
      logo_url            = optional(string)
      type                = optional(string)
      is_provider_visible = optional(bool)
      domains             = optional(list(string))
    })))
    accent_color                        = optional(string)
    logo_align                          = optional(string)
    webfinger                           = optional(string)
    require_auth_time                   = optional(bool)
    enable_login_spi                    = optional(bool)
    backchannel_logout_session_required = optional(bool)
    suggest_verification_methods = optional(object({
      mandatory_config = optional(object({
        methods    = optional(list(string))
        range      = optional(string)
        skip_until = optional(string)
      }))
      optional_config = optional(object({
        methods = optional(list(string))
      }))
      skip_duration_in_days = optional(number)
    }))
    policy_uri                       = optional(string)
    tos_uri                          = optional(string)
    imprint_uri                      = optional(string)
    contacts                         = optional(list(string))
    token_endpoint_auth_method       = optional(string)
    token_endpoint_auth_signing_alg  = optional(string)
    default_acr_values               = optional(list(string))
    web_message_uris                 = optional(list(string))
    initiate_login_uri               = optional(string)
    registration_client_uri          = optional(string)
    registration_access_token        = optional(string)
    client_uri                       = optional(string)
    jwks_uri                         = optional(string)
    jwks                             = optional(string)
    sector_identifier_uri            = optional(string)
    subject_type                     = optional(string)
    id_token_signed_response_alg     = optional(string)
    id_token_encrypted_response_alg  = optional(string)
    id_token_encrypted_response_enc  = optional(string)
    logo_uri                         = optional(string)
    accept_roles_in_the_registration = optional(bool)
  })
  description = "Common configurations to be inherited by multiple apps"
  default     = {}
}
