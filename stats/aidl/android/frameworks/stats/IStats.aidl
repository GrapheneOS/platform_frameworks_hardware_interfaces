//
// Copyright (C) 2021 The Android Open Source Project
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
package android.frameworks.stats;

import android.frameworks.stats.IVendorPullAtomCallback;
import android.frameworks.stats.VendorAtom;
import android.frameworks.stats.VendorPullAtomMetadata;

/**
 * IStats is an interface that allows clients to report specific hardware
 * reliability events, which are translated into calls for the client to accept.
 */
@VintfStability
interface IStats {
    /**
     * Report a custom vendor atom.
     *
     * @param VendorAtom A VendorAtom struct that specifies the atom ID, field
     *        types, and data from the client that must be logged in statsd.
     *        Whether or not the atom is uploaded must be determined by the
     *        atom ID and server-side configs.
     */
    oneway void reportVendorAtom(in VendorAtom vendorAtom);

    @JavaPassthrough(annotation="@android.annotation.RequiresPermission(android.Manifest.permission.REGISTER_STATS_PULL_ATOM)")
    oneway void setPullAtomCallback(int atomTag, in @nullable VendorPullAtomMetadata metadata,
                                    in IVendorPullAtomCallback pullerCallback);

    @JavaPassthrough(annotation="@android.annotation.RequiresPermission(android.Manifest.permission.REGISTER_STATS_PULL_ATOM)")
    oneway void clearPullAtomCallback(int atomTag);
}
