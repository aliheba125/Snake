.class public final Landroidx/appcompat/view/menu/qf1;
.super Landroidx/appcompat/view/menu/fz1;
.source "SourceFile"


# instance fields
.field public b:Ljava/lang/Boolean;

.field public c:Landroidx/appcompat/view/menu/wf1;

.field public d:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/cx1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/fz1;-><init>(Landroidx/appcompat/view/menu/cx1;)V

    sget-object p1, Landroidx/appcompat/view/menu/zf1;->a:Landroidx/appcompat/view/menu/zf1;

    iput-object p1, p0, Landroidx/appcompat/view/menu/qf1;->c:Landroidx/appcompat/view/menu/wf1;

    return-void
.end method

.method public static G()J
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/si1;->f:Landroidx/appcompat/view/menu/us1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/us1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static M()J
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/si1;->F:Landroidx/appcompat/view/menu/us1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/us1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private final c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-class v0, Ljava/lang/String;

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    goto :goto_3

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "SystemProperties.get() threw an exception"

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :goto_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "Could not access SystemProperties.get()"

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :goto_2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "Could not find SystemProperties.get() method"

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :goto_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "Could not find SystemProperties class"

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_4
    return-object p2
.end method


# virtual methods
.method public final A(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/si1;->q:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/qf1;->u(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;)I

    move-result p1

    return p1
.end method

.method public final B(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/qf1;->D(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;)Z

    move-result p1

    return p1
.end method

.method public final C(Ljava/lang/String;)J
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/si1;->c:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/qf1;->x(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final D(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/us1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/qf1;->c:Landroidx/appcompat/view/menu/wf1;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/us1;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroidx/appcompat/view/menu/wf1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/us1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_1
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/us1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final E()I
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->j()Landroidx/appcompat/view/menu/x92;

    move-result-object v0

    const v1, 0xc02a560

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/x92;->b0(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    return v0

    :cond_0
    const/16 v0, 0x19

    return v0
.end method

.method public final F(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/qf1;->U()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string v0, "Failed to load metadata: Metadata bundle is null"

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final H(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/si1;->N:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/qf1;->z(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final I(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/qf1;->U()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string v0, "Failed to load metadata: Metadata bundle is null"

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    :goto_0
    move-object p1, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_2

    return-object v1

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v1

    :cond_3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v2, "Failed to load string array from metadata: resource not found"

    invoke-virtual {v0, v2, p1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final J(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/si1;->M:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/qf1;->D(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;)Z

    move-result p1

    return p1
.end method

.method public final K(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/qf1;->c:Landroidx/appcompat/view/menu/wf1;

    const-string v1, "gaia_collection_enabled"

    invoke-interface {v0, p1, v1}, Landroidx/appcompat/view/menu/wf1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final L(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/qf1;->c:Landroidx/appcompat/view/menu/wf1;

    const-string v1, "measurement.event_sampling_enabled"

    invoke-interface {v0, p1, v1}, Landroidx/appcompat/view/menu/wf1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final N()Ljava/lang/String;
    .locals 2

    const-string v0, "debug.firebase.analytics.app"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/view/menu/qf1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final O()Ljava/lang/String;
    .locals 2

    const-string v0, "debug.deferred.deeplink"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/view/menu/qf1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final P()Z
    .locals 1

    const-string v0, "google_analytics_adid_collection_enabled"

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/qf1;->F(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final Q()Z
    .locals 1

    const-string v0, "google_analytics_automatic_screen_reporting_enabled"

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/qf1;->F(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final R()Z
    .locals 1

    const-string v0, "firebase_analytics_collection_deactivated"

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/qf1;->F(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final S()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/qf1;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "app_measurement_lite"

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/qf1;->F(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/qf1;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Landroidx/appcompat/view/menu/qf1;->b:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/qf1;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/fz1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->t()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final T()Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/qf1;->d:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/qf1;->d:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {}, Landroidx/appcompat/view/menu/dk0;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/qf1;->d:Ljava/lang/Boolean;

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/qf1;->d:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Landroidx/appcompat/view/menu/qf1;->d:Ljava/lang/Boolean;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "My process not in the list of running processes"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    :cond_2
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/qf1;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final U()Landroid/os/Bundle;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    const-string v2, "Failed to load metadata: PackageManager is null"

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/appcompat/view/menu/sa1;->a(Landroid/content/Context;)Landroidx/appcompat/view/menu/ah0;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/view/menu/ah0;->c(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    const-string v2, "Failed to load metadata: ApplicationInfo is null"

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    return-object v0

    :cond_1
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v2

    const-string v3, "Failed to load metadata: Package name not found"

    invoke-virtual {v2, v3, v1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final bridge synthetic a()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic b()Landroidx/appcompat/view/menu/cc;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic d()Landroidx/appcompat/view/menu/mf1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->d()Landroidx/appcompat/view/menu/mf1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic e()Landroidx/appcompat/view/menu/qf1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f()Landroidx/appcompat/view/menu/ci1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->f()Landroidx/appcompat/view/menu/ci1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g()Landroidx/appcompat/view/menu/mt1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->g()Landroidx/appcompat/view/menu/mt1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic h()Landroidx/appcompat/view/menu/jw1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic i()Landroidx/appcompat/view/menu/tu1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->i()Landroidx/appcompat/view/menu/tu1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Landroidx/appcompat/view/menu/x92;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->j()Landroidx/appcompat/view/menu/x92;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic k()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->k()V

    return-void
.end method

.method public final bridge synthetic l()Landroidx/appcompat/view/menu/pt1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic m()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->m()V

    return-void
.end method

.method public final bridge synthetic n()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    return-void
.end method

.method public final o(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;)D
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/us1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    return-wide p1

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/qf1;->c:Landroidx/appcompat/view/menu/wf1;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/us1;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroidx/appcompat/view/menu/wf1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/us1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    return-wide p1

    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/us1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/us1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    return-wide p1
.end method

.method public final p(Ljava/lang/String;)I
    .locals 3

    sget-object v0, Landroidx/appcompat/view/menu/si1;->J:Landroidx/appcompat/view/menu/us1;

    const/16 v1, 0x1f4

    const/16 v2, 0x7d0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroidx/appcompat/view/menu/qf1;->q(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;II)I

    move-result p1

    return p1
.end method

.method public final q(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;II)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/qf1;->u(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;)I

    move-result p1

    invoke-static {p1, p4}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public final r(Landroidx/appcompat/view/menu/wf1;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/qf1;->c:Landroidx/appcompat/view/menu/wf1;

    return-void
.end method

.method public final s(Landroidx/appcompat/view/menu/us1;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/view/menu/qf1;->D(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;)Z

    move-result p1

    return p1
.end method

.method public final t(Ljava/lang/String;)I
    .locals 2

    invoke-static {}, Landroidx/appcompat/view/menu/tb2;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object p1

    sget-object v0, Landroidx/appcompat/view/menu/si1;->b1:Landroidx/appcompat/view/menu/us1;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/view/menu/qf1;->D(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1f4

    return p1

    :cond_0
    const/16 p1, 0x64

    return p1
.end method

.method public final u(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/us1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/qf1;->c:Landroidx/appcompat/view/menu/wf1;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/us1;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroidx/appcompat/view/menu/wf1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/us1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/us1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/us1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final v()I
    .locals 4

    invoke-static {}, Landroidx/appcompat/view/menu/yb2;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v0

    sget-object v2, Landroidx/appcompat/view/menu/si1;->I0:Landroidx/appcompat/view/menu/us1;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroidx/appcompat/view/menu/qf1;->D(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->j()Landroidx/appcompat/view/menu/x92;

    move-result-object v0

    const v2, 0xdc64e60

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/view/menu/x92;->b0(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x23

    return v0

    :cond_0
    return v1
.end method

.method public final w(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/qf1;->t(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x100

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public final x(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;)J
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/us1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/qf1;->c:Landroidx/appcompat/view/menu/wf1;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/us1;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroidx/appcompat/view/menu/wf1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/us1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/us1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/us1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method public final y(Ljava/lang/String;)I
    .locals 3

    sget-object v0, Landroidx/appcompat/view/menu/si1;->K:Landroidx/appcompat/view/menu/us1;

    const/16 v1, 0x19

    const/16 v2, 0x64

    invoke-virtual {p0, p1, v0, v1, v2}, Landroidx/appcompat/view/menu/qf1;->q(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;II)I

    move-result p1

    return p1
.end method

.method public final z(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/us1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/qf1;->c:Landroidx/appcompat/view/menu/wf1;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/us1;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroidx/appcompat/view/menu/wf1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/us1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
