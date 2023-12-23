.class public Lcom/android/internal/util/PropImitationHooks;
.super Ljava/lang/Object;
.source "PropImitationHooks.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final FEATURE_NEXUS_PRELOAD:Ljava/lang/String; = "com.google.android.apps.photos.NEXUS_PRELOAD"

.field private static final PACKAGE_ARCORE:Ljava/lang/String; = "com.google.ar.core"

.field private static final PACKAGE_FINSKY:Ljava/lang/String; = "com.android.vending"

.field private static final PACKAGE_GBOARD:Ljava/lang/String; = "com.google.android.inputmethod.latin"

.field private static final PACKAGE_GMS:Ljava/lang/String; = "com.google.android.gms"

.field private static final PACKAGE_GPHOTOS:Ljava/lang/String; = "com.google.android.apps.photos"

.field private static final PACKAGE_SETUPWIZARD:Ljava/lang/String; = "com.google.android.setupwizard"

.field private static final PACKAGE_SUBSCRIPTION_RED:Ljava/lang/String; = "com.google.android.apps.subscriptions.red"

.field private static final PACKAGE_TURBO:Ljava/lang/String; = "com.google.android.apps.turbo"

.field private static final PACKAGE_VELVET:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field private static final PROCESS_GMS_UNSTABLE:Ljava/lang/String; = "com.google.android.gms.unstable"

.field private static final TAG:Ljava/lang/String; = "PropImitationHooks"

.field private static final sCertifiedFp:Ljava/lang/String;

.field private static volatile sIsFinsky:Z

.field private static volatile sIsGms:Z

.field private static volatile sIsPhotos:Z

.field private static final sP8Props:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPixelFeatures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPixelXLProps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final sStockFp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 40
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10401f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/PropImitationHooks;->sCertifiedFp:Ljava/lang/String;

    .line 43
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040296

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/PropImitationHooks;->sStockFp:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/PropImitationHooks;->sP8Props:Ljava/util/Map;

    .line 60
    const-string v1, "BRAND"

    const-string/jumbo v2, "google"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v3, "MANUFACTURER"

    const-string v4, "Google"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v5, "DEVICE"

    const-string/jumbo v6, "husky"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v7, "PRODUCT"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v6, "Pixel 8 Pro"

    const-string v8, "MODEL"

    invoke-interface {v0, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string/jumbo v6, "google/husky/husky:14/UD1A.231105.004/11010374:user/release-keys"

    const-string v9, "FINGERPRINT"

    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/PropImitationHooks;->sPixelXLProps:Ljava/util/Map;

    .line 70
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string/jumbo v1, "marlin"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v1, "Pixel XL"

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string/jumbo v1, "google/marlin/marlin:10/QP1A.191005.007.A3/5972272:user/release-keys"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v2, "PIXEL_2017_PRELOAD"

    const-string v3, "PIXEL_2018_PRELOAD"

    const-string v4, "PIXEL_2019_MIDYEAR_PRELOAD"

    const-string v5, "PIXEL_2019_PRELOAD"

    const-string v6, "PIXEL_2020_EXPERIENCE"

    const-string v7, "PIXEL_2020_MIDYEAR_EXPERIENCE"

    invoke-static/range {v2 .. v7}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/PropImitationHooks;->sPixelFeatures:Ljava/util/Set;

    .line 87
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/util/PropImitationHooks;->sIsGms:Z

    .line 88
    sput-boolean v0, Lcom/android/internal/util/PropImitationHooks;->sIsFinsky:Z

    .line 89
    sput-boolean v0, Lcom/android/internal/util/PropImitationHooks;->sIsPhotos:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dlog(Ljava/lang/String;)V
    .registers 1

    .line 185
    return-void
.end method

.method public static hasSystemFeature(Ljava/lang/String;Z)Z
    .registers 5

    .line 171
    sget-boolean v0, Lcom/android/internal/util/PropImitationHooks;->sIsPhotos:Z

    if-eqz v0, :cond_5d

    .line 172
    const-string v0, " for Google Photos"

    if-eqz p1, :cond_38

    sget-object v1, Lcom/android/internal/util/PropImitationHooks;->sPixelFeatures:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/internal/util/PropImitationHooks$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/internal/util/PropImitationHooks$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 173
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Blocked system feature "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/PropImitationHooks;->dlog(Ljava/lang/String;)V

    .line 174
    const/4 p1, 0x0

    goto :goto_5d

    .line 175
    :cond_38
    if-nez p1, :cond_5d

    const-string v1, "com.google.android.apps.photos.NEXUS_PRELOAD"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 176
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enabled system feature "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/PropImitationHooks;->dlog(Ljava/lang/String;)V

    .line 177
    const/4 p1, 0x1

    .line 180
    :cond_5d
    :goto_5d
    return p1
.end method

.method private static isCallerSafetyNet()Z
    .registers 2

    .line 158
    sget-boolean v0, Lcom/android/internal/util/PropImitationHooks;->sIsGms:Z

    if-eqz v0, :cond_1d

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/util/PropImitationHooks$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/util/PropImitationHooks$$ExternalSyntheticLambda0;-><init>()V

    .line 159
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    .line 158
    :goto_1e
    return v0
.end method

.method static synthetic lambda$isCallerSafetyNet$2(Ljava/lang/StackTraceElement;)Z
    .registers 2

    .line 159
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DroidGuard"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$setProps$0(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 2

    .line 115
    invoke-static {p0, p1}, Lcom/android/internal/util/PropImitationHooks;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$setProps$1(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 2

    .line 118
    invoke-static {p0, p1}, Lcom/android/internal/util/PropImitationHooks;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static onEngineGetCertificateChain()V
    .registers 2

    .line 164
    invoke-static {}, Lcom/android/internal/util/PropImitationHooks;->isCallerSafetyNet()Z

    move-result v0

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/android/internal/util/PropImitationHooks;->sIsFinsky:Z

    if-nez v0, :cond_b

    .line 168
    return-void

    .line 165
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Blocked key attestation sIsGms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/internal/util/PropImitationHooks;->sIsGms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sIsFinsky="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/internal/util/PropImitationHooks;->sIsFinsky:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/PropImitationHooks;->dlog(Ljava/lang/String;)V

    .line 166
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private static setPropValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 124
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting prop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/PropImitationHooks;->dlog(Ljava/lang/String;)V

    .line 125
    const-class v0, Landroid/os/Build;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 126
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 127
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_36
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_36} :catch_37
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_36} :catch_37

    .line 131
    goto :goto_50

    .line 129
    :catch_37
    move-exception p1

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to set prop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PropImitationHooks"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    :goto_50
    return-void
.end method

.method public static setProps(Landroid/app/Application;)V
    .registers 5

    .line 92
    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 93
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    .line 95
    if-eqz p0, :cond_109

    if-nez v0, :cond_e

    goto/16 :goto_109

    .line 99
    :cond_e
    const-string v1, "com.google.android.gms"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const-string v2, "com.google.android.gms.unstable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    sput-boolean v0, Lcom/android/internal/util/PropImitationHooks;->sIsGms:Z

    .line 100
    const-string v0, "com.android.vending"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/util/PropImitationHooks;->sIsFinsky:Z

    .line 101
    const-string v0, "com.google.android.apps.photos"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/util/PropImitationHooks;->sIsPhotos:Z

    .line 103
    sget-boolean v0, Lcom/android/internal/util/PropImitationHooks;->sIsGms:Z

    if-eqz v0, :cond_52

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting ASUS_X00HD fingerprint for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/PropImitationHooks;->dlog(Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/android/internal/util/PropImitationHooks;->spoofBuildGms()V

    goto/16 :goto_108

    .line 106
    :cond_52
    sget-object v0, Lcom/android/internal/util/PropImitationHooks;->sCertifiedFp:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string v3, "FINGERPRINT"

    if-nez v2, :cond_7b

    sget-boolean v2, Lcom/android/internal/util/PropImitationHooks;->sIsFinsky:Z

    if-eqz v2, :cond_7b

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting certified fingerprint for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/PropImitationHooks;->dlog(Ljava/lang/String;)V

    .line 108
    invoke-static {v3, v0}, Lcom/android/internal/util/PropImitationHooks;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_108

    .line 109
    :cond_7b
    sget-object v0, Lcom/android/internal/util/PropImitationHooks;->sStockFp:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a5

    const-string v2, "com.google.ar.core"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting stock fingerprint for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/PropImitationHooks;->dlog(Ljava/lang/String;)V

    .line 111
    invoke-static {v3, v0}, Lcom/android/internal/util/PropImitationHooks;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_108

    .line 112
    :cond_a5
    const-string v0, "com.google.android.apps.subscriptions.red"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e8

    const-string v0, "com.google.android.apps.turbo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e8

    .line 113
    const-string v0, "com.google.android.googlequicksearchbox"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e8

    const-string v0, "com.google.android.inputmethod.latin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e8

    const-string v0, "com.google.android.setupwizard"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e8

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d4

    goto :goto_e8

    .line 116
    :cond_d4
    sget-boolean p0, Lcom/android/internal/util/PropImitationHooks;->sIsPhotos:Z

    if-eqz p0, :cond_108

    .line 117
    const-string p0, "Spoofing Pixel XL for Google Photos"

    invoke-static {p0}, Lcom/android/internal/util/PropImitationHooks;->dlog(Ljava/lang/String;)V

    .line 118
    sget-object p0, Lcom/android/internal/util/PropImitationHooks;->sPixelXLProps:Ljava/util/Map;

    new-instance v0, Lcom/android/internal/util/PropImitationHooks$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/util/PropImitationHooks$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    goto :goto_108

    .line 114
    :cond_e8
    :goto_e8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Spoofing Pixel 8 Pro for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/PropImitationHooks;->dlog(Ljava/lang/String;)V

    .line 115
    sget-object p0, Lcom/android/internal/util/PropImitationHooks;->sP8Props:Ljava/util/Map;

    new-instance v0, Lcom/android/internal/util/PropImitationHooks$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/util/PropImitationHooks$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 120
    :cond_108
    :goto_108
    return-void

    .line 96
    :cond_109
    :goto_109
    return-void
.end method

.method private static setVersionField(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 4

    .line 137
    :try_start_0
    const-class v0, Landroid/os/Build$VERSION;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 138
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 140
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 142
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_12
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_12} :catch_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_12} :catch_13

    .line 145
    goto :goto_2c

    .line 143
    :catch_13
    move-exception p1

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to spoof Build."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PropImitationHooks"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    :goto_2c
    return-void
.end method

.method private static spoofBuildGms()V
    .registers 2

    .line 150
    const-string v0, "FINGERPRINT"

    const-string v1, "asus/WW_Phone/ASUS_X00HD_4:7.1.1/NMF26F/14.2016.1801.372-20180119:user/release-keys"

    invoke-static {v0, v1}, Lcom/android/internal/util/PropImitationHooks;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    const-string v0, "PRODUCT"

    const-string v1, "WW_Phone"

    invoke-static {v0, v1}, Lcom/android/internal/util/PropImitationHooks;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    const-string v0, "DEVICE"

    const-string v1, "ASUS_X00HD_4"

    invoke-static {v0, v1}, Lcom/android/internal/util/PropImitationHooks;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    const-string v0, "MODEL"

    const-string v1, "ASUS_X00HD"

    invoke-static {v0, v1}, Lcom/android/internal/util/PropImitationHooks;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    const/16 v0, 0x19

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "DEVICE_INITIAL_SDK_INT"

    invoke-static {v1, v0}, Lcom/android/internal/util/PropImitationHooks;->setVersionField(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    return-void
.end method
