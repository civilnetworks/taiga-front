###
# Copyright (C) 2014-2016 Andrey Antukh <niwi@niwi.be>
# Copyright (C) 2014-2016 Jesús Espino Garcia <jespinog@gmail.com>
# Copyright (C) 2014-2016 David Barragán Merino <bameda@dbarragan.com>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.
#
# File: modules/components/terms-of-service-and-privacy-policy-notice/terms-of-service-and-privacy-policy-notice.directive.coffee
###


TermsOfServiceAndPrivacyPolicyNoticeDirective = ($config) ->
    link = (scope, el, attrs) ->
        scope.privacyPolicyUrl = $config.get("privacyPolicyUrl")
        scope.termsOfServiceUrl = $config.get("termsOfServiceUrl")

    return {
        restrict: "AE",
        scope: {},
        link: link,
        templateUrl: "components/terms-of-service-and-privacy-policy-notice/terms-of-service-and-privacy-policy-notice.html"
    }

angular.module("taigaComponents")
    .directive("tgTermsOfServiceAndPrivacyPolicyNotice", [
        "$tgConfig",
        TermsOfServiceAndPrivacyPolicyNoticeDirective
    ])
