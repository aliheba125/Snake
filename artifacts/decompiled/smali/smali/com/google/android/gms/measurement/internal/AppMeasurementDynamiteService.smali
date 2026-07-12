.class public Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;
.super Landroidx/appcompat/view/menu/dm1;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/util/DynamiteApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService$a;,
        Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService$b;
    }
.end annotation


# instance fields
.field public l:Landroidx/appcompat/view/menu/cx1;

.field public final m:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/view/menu/dm1;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    new-instance v0, Landroidx/appcompat/view/menu/o4;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/o4;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->m:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public beginAdUnitExposure(Ljava/lang/String;J)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->y()Landroidx/appcompat/view/menu/oh1;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/view/menu/oh1;->z(Ljava/lang/String;J)V

    return-void
.end method

.method public clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/view/menu/d02;->X(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public clearMeasurementEnabled(J)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/d02;->R(Ljava/lang/Boolean;)V

    return-void
.end method

.method public endAdUnitExposure(Ljava/lang/String;J)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->y()Landroidx/appcompat/view/menu/oh1;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/view/menu/oh1;->D(Ljava/lang/String;J)V

    return-void
.end method

.method public generateEventId(Landroidx/appcompat/view/menu/hm1;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->L()Landroidx/appcompat/view/menu/x92;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/x92;->P0()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/cx1;->L()Landroidx/appcompat/view/menu/x92;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Landroidx/appcompat/view/menu/x92;->P(Landroidx/appcompat/view/menu/hm1;J)V

    return-void
.end method

.method public getAppInstanceId(Landroidx/appcompat/view/menu/hm1;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/view/menu/wy1;

    invoke-direct {v1, p0, p1}, Landroidx/appcompat/view/menu/wy1;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Landroidx/appcompat/view/menu/hm1;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/jw1;->D(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCachedAppInstanceId(Landroidx/appcompat/view/menu/hm1;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/d02;->i0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->k(Landroidx/appcompat/view/menu/hm1;Ljava/lang/String;)V

    return-void
.end method

.method public getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Landroidx/appcompat/view/menu/hm1;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/view/menu/d52;

    invoke-direct {v1, p0, p3, p1, p2}, Landroidx/appcompat/view/menu/d52;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Landroidx/appcompat/view/menu/hm1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/jw1;->D(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCurrentScreenClass(Landroidx/appcompat/view/menu/hm1;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/d02;->j0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->k(Landroidx/appcompat/view/menu/hm1;Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentScreenName(Landroidx/appcompat/view/menu/hm1;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/d02;->k0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->k(Landroidx/appcompat/view/menu/hm1;Ljava/lang/String;)V

    return-void
.end method

.method public getGmpAppId(Landroidx/appcompat/view/menu/hm1;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/d02;->l0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->k(Landroidx/appcompat/view/menu/hm1;Ljava/lang/String;)V

    return-void
.end method

.method public getMaxUserProperties(Ljava/lang/String;Landroidx/appcompat/view/menu/hm1;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/cx1;->L()Landroidx/appcompat/view/menu/x92;

    move-result-object p1

    const/16 v0, 0x19

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/view/menu/x92;->O(Landroidx/appcompat/view/menu/hm1;I)V

    return-void
.end method

.method public getSessionId(Landroidx/appcompat/view/menu/hm1;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v1

    new-instance v2, Landroidx/appcompat/view/menu/d22;

    invoke-direct {v2, v0, p1}, Landroidx/appcompat/view/menu/d22;-><init>(Landroidx/appcompat/view/menu/d02;Landroidx/appcompat/view/menu/hm1;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/jw1;->D(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getTestFlag(Landroidx/appcompat/view/menu/hm1;I)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/cx1;->L()Landroidx/appcompat/view/menu/x92;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/d02;->e0()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/view/menu/x92;->T(Landroidx/appcompat/view/menu/hm1;Z)V

    :goto_0
    return-void

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/cx1;->L()Landroidx/appcompat/view/menu/x92;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/d02;->g0()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/view/menu/x92;->O(Landroidx/appcompat/view/menu/hm1;I)V

    return-void

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/cx1;->L()Landroidx/appcompat/view/menu/x92;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/d02;->f0()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "r"

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    :try_start_0
    invoke-interface {p1, v2}, Landroidx/appcompat/view/menu/hm1;->f(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p2, Landroidx/appcompat/view/menu/fz1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object p2

    const-string v0, "Error returning double value to wrapper"

    invoke-virtual {p2, v0, p1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/cx1;->L()Landroidx/appcompat/view/menu/x92;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/d02;->h0()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, Landroidx/appcompat/view/menu/x92;->P(Landroidx/appcompat/view/menu/hm1;J)V

    return-void

    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/cx1;->L()Landroidx/appcompat/view/menu/x92;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/d02;->m0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/view/menu/x92;->R(Landroidx/appcompat/view/menu/hm1;Ljava/lang/String;)V

    return-void
.end method

.method public getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLandroidx/appcompat/view/menu/hm1;)V
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    new-instance v7, Landroidx/appcompat/view/menu/z02;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Landroidx/appcompat/view/menu/z02;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Landroidx/appcompat/view/menu/hm1;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v7}, Landroidx/appcompat/view/menu/jw1;->D(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initForTests(Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    return-void
.end method

.method public initialize(Landroidx/appcompat/view/menu/b20;Landroidx/appcompat/view/menu/jn1;J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    if-nez v0, :cond_0

    invoke-static {p1}, Landroidx/appcompat/view/menu/vf0;->j(Landroidx/appcompat/view/menu/b20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p1, p2, p3}, Landroidx/appcompat/view/menu/cx1;->c(Landroid/content/Context;Landroidx/appcompat/view/menu/jn1;Ljava/lang/Long;)Landroidx/appcompat/view/menu/cx1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string p2, "Attempting to initialize multiple times"

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    return-void
.end method

.method public isDataCollectionEnabled(Landroidx/appcompat/view/menu/hm1;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/view/menu/o92;

    invoke-direct {v1, p0, p1}, Landroidx/appcompat/view/menu/o92;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Landroidx/appcompat/view/menu/hm1;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/jw1;->D(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to perform action before initialize."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final k(Landroidx/appcompat/view/menu/hm1;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->L()Landroidx/appcompat/view/menu/x92;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/x92;->R(Landroidx/appcompat/view/menu/hm1;Ljava/lang/String;)V

    return-void
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-wide/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Landroidx/appcompat/view/menu/d02;->Z(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void
.end method

.method public logEventAndBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroidx/appcompat/view/menu/hm1;J)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    invoke-static {p2}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "app"

    new-instance v0, Landroid/os/Bundle;

    if-eqz p3, :cond_0

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string v1, "_o"

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Landroidx/appcompat/view/menu/oi1;

    new-instance v2, Landroidx/appcompat/view/menu/ei1;

    invoke-direct {v2, p3}, Landroidx/appcompat/view/menu/ei1;-><init>(Landroid/os/Bundle;)V

    move-object v0, v6

    move-object v1, p2

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/oi1;-><init>(Ljava/lang/String;Landroidx/appcompat/view/menu/ei1;Ljava/lang/String;J)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/cx1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object p2

    new-instance p3, Landroidx/appcompat/view/menu/a32;

    invoke-direct {p3, p0, p4, v6, p1}, Landroidx/appcompat/view/menu/a32;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Landroidx/appcompat/view/menu/hm1;Landroidx/appcompat/view/menu/oi1;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroidx/appcompat/view/menu/jw1;->D(Ljava/lang/Runnable;)V

    return-void
.end method

.method public logHealthData(ILjava/lang/String;Landroidx/appcompat/view/menu/b20;Landroidx/appcompat/view/menu/b20;Landroidx/appcompat/view/menu/b20;)V
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    const/4 v0, 0x0

    if-nez p3, :cond_0

    move-object v6, v0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Landroidx/appcompat/view/menu/vf0;->j(Landroidx/appcompat/view/menu/b20;)Ljava/lang/Object;

    move-result-object p3

    move-object v6, p3

    :goto_0
    if-nez p4, :cond_1

    move-object v7, v0

    goto :goto_1

    :cond_1
    invoke-static {p4}, Landroidx/appcompat/view/menu/vf0;->j(Landroidx/appcompat/view/menu/b20;)Ljava/lang/Object;

    move-result-object p3

    move-object v7, p3

    :goto_1
    if-nez p5, :cond_2

    :goto_2
    move-object v8, v0

    goto :goto_3

    :cond_2
    invoke-static {p5}, Landroidx/appcompat/view/menu/vf0;->j(Landroidx/appcompat/view/menu/b20;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :goto_3
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v2, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v8}, Landroidx/appcompat/view/menu/pt1;->z(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onActivityCreated(Landroidx/appcompat/view/menu/b20;Landroid/os/Bundle;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object p3

    iget-object p3, p3, Landroidx/appcompat/view/menu/d02;->c:Landroidx/appcompat/view/menu/r22;

    if-eqz p3, :cond_0

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p4}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/appcompat/view/menu/d02;->o0()V

    invoke-static {p1}, Landroidx/appcompat/view/menu/vf0;->j(Landroidx/appcompat/view/menu/b20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-interface {p3, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroidx/appcompat/view/menu/b20;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object p2

    iget-object p2, p2, Landroidx/appcompat/view/menu/d02;->c:Landroidx/appcompat/view/menu/r22;

    if-eqz p2, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/d02;->o0()V

    invoke-static {p1}, Landroidx/appcompat/view/menu/vf0;->j(Landroidx/appcompat/view/menu/b20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-interface {p2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroidx/appcompat/view/menu/b20;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object p2

    iget-object p2, p2, Landroidx/appcompat/view/menu/d02;->c:Landroidx/appcompat/view/menu/r22;

    if-eqz p2, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/d02;->o0()V

    invoke-static {p1}, Landroidx/appcompat/view/menu/vf0;->j(Landroidx/appcompat/view/menu/b20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-interface {p2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroidx/appcompat/view/menu/b20;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object p2

    iget-object p2, p2, Landroidx/appcompat/view/menu/d02;->c:Landroidx/appcompat/view/menu/r22;

    if-eqz p2, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/d02;->o0()V

    invoke-static {p1}, Landroidx/appcompat/view/menu/vf0;->j(Landroidx/appcompat/view/menu/b20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-interface {p2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroidx/appcompat/view/menu/b20;Landroidx/appcompat/view/menu/hm1;J)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object p3

    iget-object p3, p3, Landroidx/appcompat/view/menu/d02;->c:Landroidx/appcompat/view/menu/r22;

    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/d02;->o0()V

    invoke-static {p1}, Landroidx/appcompat/view/menu/vf0;->j(Landroidx/appcompat/view/menu/b20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-interface {p3, p1, p4}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    :cond_0
    :try_start_0
    invoke-interface {p2, p4}, Landroidx/appcompat/view/menu/hm1;->f(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object p2

    const-string p3, "Error returning bundle value to wrapper"

    invoke-virtual {p2, p3, p1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onActivityStarted(Landroidx/appcompat/view/menu/b20;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object p2

    iget-object p2, p2, Landroidx/appcompat/view/menu/d02;->c:Landroidx/appcompat/view/menu/r22;

    if-eqz p2, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/d02;->o0()V

    invoke-static {p1}, Landroidx/appcompat/view/menu/vf0;->j(Landroidx/appcompat/view/menu/b20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-interface {p2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroidx/appcompat/view/menu/b20;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object p2

    iget-object p2, p2, Landroidx/appcompat/view/menu/d02;->c:Landroidx/appcompat/view/menu/r22;

    if-eqz p2, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/d02;->o0()V

    invoke-static {p1}, Landroidx/appcompat/view/menu/vf0;->j(Landroidx/appcompat/view/menu/b20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-interface {p2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public performAction(Landroid/os/Bundle;Landroidx/appcompat/view/menu/hm1;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/hm1;->f(Landroid/os/Bundle;)V

    return-void
.end method

.method public registerOnMeasurementEventListener(Landroidx/appcompat/view/menu/dn1;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->m:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->m:Ljava/util/Map;

    invoke-interface {p1}, Landroidx/appcompat/view/menu/dn1;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/sz1;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService$b;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService$b;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Landroidx/appcompat/view/menu/dn1;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->m:Ljava/util/Map;

    invoke-interface {p1}, Landroidx/appcompat/view/menu/dn1;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/appcompat/view/menu/d02;->L(Landroidx/appcompat/view/menu/sz1;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public resetAnalyticsData(J)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/d02;->T(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v1

    new-instance v2, Landroidx/appcompat/view/menu/u12;

    invoke-direct {v2, v0, p1, p2}, Landroidx/appcompat/view/menu/u12;-><init>(Landroidx/appcompat/view/menu/d02;J)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/jw1;->D(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setConditionalUserProperty(Landroid/os/Bundle;J)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string p2, "Conditional user property must not be null"

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/view/menu/d02;->H(Landroid/os/Bundle;J)V

    return-void
.end method

.method public setConsent(Landroid/os/Bundle;J)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v1

    new-instance v2, Landroidx/appcompat/view/menu/p02;

    invoke-direct {v2, v0, p1, p2, p3}, Landroidx/appcompat/view/menu/p02;-><init>(Landroidx/appcompat/view/menu/d02;Landroid/os/Bundle;J)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/jw1;->G(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setConsentThirdParty(Landroid/os/Bundle;J)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object v0

    const/16 v1, -0x14

    invoke-virtual {v0, p1, v1, p2, p3}, Landroidx/appcompat/view/menu/d02;->G(Landroid/os/Bundle;IJ)V

    return-void
.end method

.method public setCurrentScreen(Landroidx/appcompat/view/menu/b20;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p4}, Landroidx/appcompat/view/menu/cx1;->I()Landroidx/appcompat/view/menu/r32;

    move-result-object p4

    invoke-static {p1}, Landroidx/appcompat/view/menu/vf0;->j(Landroidx/appcompat/view/menu/b20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p4, p1, p2, p3}, Landroidx/appcompat/view/menu/r32;->H(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDataCollectionEnabled(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cp1;->v()V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v1

    new-instance v2, Landroidx/appcompat/view/menu/e12;

    invoke-direct {v2, v0, p1}, Landroidx/appcompat/view/menu/e12;-><init>(Landroidx/appcompat/view/menu/d02;Z)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/jw1;->D(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDefaultEventParameters(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p1, v1

    :goto_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v1

    new-instance v2, Landroidx/appcompat/view/menu/j02;

    invoke-direct {v2, v0, p1}, Landroidx/appcompat/view/menu/j02;-><init>(Landroidx/appcompat/view/menu/d02;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/jw1;->D(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setEventInterceptor(Landroidx/appcompat/view/menu/dn1;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    new-instance v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService$a;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService$a;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Landroidx/appcompat/view/menu/dn1;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/cx1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/jw1;->J()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/d02;->M(Landroidx/appcompat/view/menu/uz1;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/cx1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/measurement/internal/a;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/a;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService$a;)V

    invoke-virtual {p1, v1}, Landroidx/appcompat/view/menu/jw1;->D(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setInstanceIdProvider(Landroidx/appcompat/view/menu/fn1;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    return-void
.end method

.method public setMeasurementEnabled(ZJ)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/d02;->R(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setMinimumSessionDuration(J)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    return-void
.end method

.method public setSessionTimeoutDuration(J)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v1

    new-instance v2, Landroidx/appcompat/view/menu/i12;

    invoke-direct {v2, v0, p1, p2}, Landroidx/appcompat/view/menu/i12;-><init>(Landroidx/appcompat/view/menu/d02;J)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/jw1;->D(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;J)V
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, v1, Landroidx/appcompat/view/menu/fz1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string p2, "User ID must be non-empty or null"

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/fz1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    new-instance v2, Landroidx/appcompat/view/menu/s02;

    invoke-direct {v2, v1, p1}, Landroidx/appcompat/view/menu/s02;-><init>(Landroidx/appcompat/view/menu/d02;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/jw1;->D(Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    const-string v3, "_id"

    const/4 v5, 0x1

    move-object v4, p1

    move-wide v6, p2

    invoke-virtual/range {v1 .. v7}, Landroidx/appcompat/view/menu/d02;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    return-void
.end method

.method public setUserProperty(Ljava/lang/String;Ljava/lang/String;Landroidx/appcompat/view/menu/b20;ZJ)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    invoke-static {p3}, Landroidx/appcompat/view/menu/vf0;->j(Landroidx/appcompat/view/menu/b20;)Ljava/lang/Object;

    move-result-object v3

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/view/menu/d02;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    return-void
.end method

.method public unregisterOnMeasurementEventListener(Landroidx/appcompat/view/menu/dn1;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->j()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->m:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->m:Ljava/util/Map;

    invoke-interface {p1}, Landroidx/appcompat/view/menu/dn1;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/sz1;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService$b;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService$b;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Landroidx/appcompat/view/menu/dn1;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/cx1;->H()Landroidx/appcompat/view/menu/d02;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/appcompat/view/menu/d02;->v0(Landroidx/appcompat/view/menu/sz1;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
