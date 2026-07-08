.class public final Landroidx/appcompat/view/menu/jm1;
.super Landroidx/appcompat/view/menu/rj1;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/fm1;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService"

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/view/menu/rj1;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final beginAdUnitExposure(Ljava/lang/String;J)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/rj1;->h()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x17

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/rj1;->k(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/rj1;->h()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p3}, Landroidx/appcompat/view/menu/vj1;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x9

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/rj1;->k(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final endAdUnitExposure(Ljava/lang/String;J)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/rj1;->h()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x18

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/rj1;->k(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final generateEventId(Landroidx/appcompat/view/menu/hm1;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/rj1;->h()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/vj1;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x16

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/rj1;->k(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final getCachedAppInstanceId(Landroidx/appcompat/view/menu/hm1;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/rj1;->h()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/vj1;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x13

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/rj1;->k(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Landroidx/appcompat/view/menu/hm1;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/rj1;->h()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p3}, Landroidx/appcompat/view/menu/vj1;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0xa

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/rj1;->k(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final getCurrentScreenClass(Landroidx/appcompat/view/menu/hm1;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/rj1;->h()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/vj1;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x11

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/rj1;->k(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final getCurrentScreenName(Landroidx/appcompat/view/menu/hm1;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/rj1;->h()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/vj1;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x10

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/rj1;->k(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final getGmpAppId(Landroidx/appcompat/view/menu/hm1;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/rj1;->h()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/vj1;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x15

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/rj1;->k(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final getMaxUserProperties(Ljava/lang/String;Landroidx/appcompat/view/menu/hm1;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/rj1;->h()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p2}, Landroidx/appcompat/view/menu/vj1;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x6

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/rj1;->k(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLandroidx/appcompat/view/menu/hm1;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/rj1;->h()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p3}, Landroidx/appcompat/view/menu/vj1;->e(Landroid/os/Parcel;Z)V

    invoke-static {v0, p4}, Landroidx/appcompat/view/menu/vj1;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/rj1;->k(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final initialize(Landroidx/appcompat/view/menu/b20;Landroidx/appcompat/view/menu/jn1;J)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/rj1;->h()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/vj1;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Landroidx/appcompat/view/menu/vj1;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/rj1;->k(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/rj1;->h()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p3}, Landroidx/appcompat/view/menu/vj1;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p4}, Landroidx/appcompat/view/menu/vj1;->e(Landroid/os/Parcel;Z)V

    invoke-static {v0, p5}, Landroidx/appcompat/view/menu/vj1;->e(Landroid/os/Parcel;Z)V

    invoke-virtual {v0, p6, p7}, Landroid/os/Parcel;->writeLong(J)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/rj1;->k(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final logHealthData(ILjava/lang/String;Landroidx/appcompat/view/menu/b20;Landroidx/appcompat/view/menu/b20;Landroidx/appcompat/view/menu/b20;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/rj1;->h()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p3}, Landroidx/appcompat/view/menu/vj1;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p4}, Landroidx/appcompat/view/menu/vj1;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p5}, Landroidx/appcompat/view/menu/vj1;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x21

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/rj1;->k(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final onActivityCreated(Landroidx/appcompat/view/menu/b20;Landroid/os/Bundle;J)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/rj1;->h()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/vj1;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Landroidx/appcompat/view/menu/vj1;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x1b

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/rj1;->k(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroidx/appcompat/view/menu/b20;J)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/rj1;->h()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/vj1;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x1c

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/rj1;->k(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final onActivityPaused(Landroidx/appcompat/view/menu/b20;J)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/rj1;->h()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/vj1;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x1d

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/rj1;->k(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final onActivityResumed(Landroidx/appcompat/view/menu/b20;J)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/rj1;->h()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/vj1;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x1e

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/rj1;->k(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroidx/appcompat/view/menu/b20;Landroidx/appcompat/view/menu/hm1;J)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/rj1;->h()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/vj1;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Landroidx/appcompat/view/menu/vj1;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x1f

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/rj1;->k(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final onActivityStarted(Landroidx/appcompat/view/menu/b20;J)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/rj1;->h()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/vj1;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x19

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/rj1;->k(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final onActivityStopped(Landroidx/appcompat/view/menu/b20;J)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/rj1;->h()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/vj1;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x1a

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/rj1;->k(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final setConditionalUserProperty(Landroid/os/Bundle;J)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/rj1;->h()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/vj1;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/rj1;->k(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final setCurrentScreen(Landroidx/appcompat/view/menu/b20;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/rj1;->h()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/vj1;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0xf

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/rj1;->k(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final setDataCollectionEnabled(Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/rj1;->h()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/vj1;->e(Landroid/os/Parcel;Z)V

    const/16 p1, 0x27

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/rj1;->k(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final setUserProperty(Ljava/lang/String;Ljava/lang/String;Landroidx/appcompat/view/menu/b20;ZJ)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/rj1;->h()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p3}, Landroidx/appcompat/view/menu/vj1;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p4}, Landroidx/appcompat/view/menu/vj1;->e(Landroid/os/Parcel;Z)V

    invoke-virtual {v0, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/rj1;->k(ILandroid/os/Parcel;)V

    return-void
.end method
