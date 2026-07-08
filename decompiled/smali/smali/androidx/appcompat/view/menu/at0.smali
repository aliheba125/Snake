.class public Landroidx/appcompat/view/menu/at0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/at0$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/at0;->a:Ljava/util/Map;

    const-string v1, "activity_manager"

    .line 4
    invoke-static {}, Landroidx/appcompat/view/menu/ev0;->h()Landroidx/appcompat/view/menu/ev0;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "job_manager"

    .line 5
    invoke-static {}, Landroidx/appcompat/view/menu/o6;->k()Landroidx/appcompat/view/menu/o6;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "package_manager"

    .line 6
    invoke-static {}, Landroidx/appcompat/view/menu/x6;->w2()Landroidx/appcompat/view/menu/x6;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "storage_manager"

    .line 7
    invoke-static {}, Landroidx/appcompat/view/menu/b7;->h()Landroidx/appcompat/view/menu/b7;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "user_manager"

    .line 8
    invoke-static {}, Landroidx/appcompat/view/menu/f7;->k()Landroidx/appcompat/view/menu/f7;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "account_manager"

    .line 9
    invoke-static {}, Landroidx/appcompat/view/menu/bv0;->I2()Landroidx/appcompat/view/menu/bv0;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "location_manager"

    .line 10
    invoke-static {}, Landroidx/appcompat/view/menu/t6;->w2()Landroidx/appcompat/view/menu/t6;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "notification_manager"

    .line 11
    invoke-static {}, Landroidx/appcompat/view/menu/pv0;->k()Landroidx/appcompat/view/menu/pv0;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/zs0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/view/menu/at0;-><init>()V

    return-void
.end method

.method public static a()Landroidx/appcompat/view/menu/at0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/at0$a;->a:Landroidx/appcompat/view/menu/at0;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/at0;->a()Landroidx/appcompat/view/menu/at0;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/at0;->c(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public static d()V
    .locals 2

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->h()Landroidx/appcompat/view/menu/yu0;

    move-result-object v0

    const-string v1, "activity_manager"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/yu0;->t(Ljava/lang/String;)Landroid/os/IBinder;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->h()Landroidx/appcompat/view/menu/yu0;

    move-result-object v0

    const-string v1, "job_manager"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/yu0;->t(Ljava/lang/String;)Landroid/os/IBinder;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->h()Landroidx/appcompat/view/menu/yu0;

    move-result-object v0

    const-string v1, "package_manager"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/yu0;->t(Ljava/lang/String;)Landroid/os/IBinder;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->h()Landroidx/appcompat/view/menu/yu0;

    move-result-object v0

    const-string v1, "storage_manager"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/yu0;->t(Ljava/lang/String;)Landroid/os/IBinder;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->h()Landroidx/appcompat/view/menu/yu0;

    move-result-object v0

    const-string v1, "user_manager"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/yu0;->t(Ljava/lang/String;)Landroid/os/IBinder;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->h()Landroidx/appcompat/view/menu/yu0;

    move-result-object v0

    const-string v1, "account_manager"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/yu0;->t(Ljava/lang/String;)Landroid/os/IBinder;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->h()Landroidx/appcompat/view/menu/yu0;

    move-result-object v0

    const-string v1, "location_manager"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/yu0;->t(Ljava/lang/String;)Landroid/os/IBinder;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->h()Landroidx/appcompat/view/menu/yu0;

    move-result-object v0

    const-string v1, "notification_manager"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/yu0;->t(Ljava/lang/String;)Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/at0;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method
