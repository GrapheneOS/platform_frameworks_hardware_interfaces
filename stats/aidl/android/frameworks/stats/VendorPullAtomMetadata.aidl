package android.frameworks.stats;

@VintfStability
parcelable VendorPullAtomMetadata {
    long coolDownMillis;
    long timeoutMillis;
    @nullable int[] additiveFields;
}
