package android.frameworks.stats;

import android.frameworks.stats.VendorAtom;
import android.frameworks.stats.IVendorPullAtomResultReceiver;

@VintfStability
interface IVendorPullAtomCallback {
    oneway void onPullAtom(int atomTag, IVendorPullAtomResultReceiver resultReceiver);
}
