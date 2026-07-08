.class public Landroidx/appcompat/view/menu/tz$b;
.super Landroidx/appcompat/view/menu/md0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/tz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/md0;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {}, Landroidx/appcompat/view/menu/y8;->j()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v3, 0x2

    aget-object v4, v2, v3

    check-cast v4, Landroid/content/Intent;

    const/4 v5, 0x3

    aget-object v5, v2, v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v7, v2, v6

    check-cast v7, Landroid/app/IServiceConnection;

    const-string v8, "_S_|_UserId"

    const/4 v9, -0x1

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_1

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v8

    :cond_1
    array-length v9, v2

    const/16 v10, 0x8

    if-lt v9, v10, :cond_2

    const/4 v9, 0x6

    aget-object v10, v2, v9

    instance-of v10, v10, Ljava/lang/String;

    if-eqz v10, :cond_2

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->o()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v9

    :cond_2
    const/4 v9, 0x5

    aget-object v10, v2, v9

    invoke-static {v10}, Landroidx/appcompat/view/menu/tz;->m(Ljava/lang/Object;)J

    move-result-wide v10

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->u()Landroidx/appcompat/view/menu/qv0;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v4, v13, v5, v8}, Landroidx/appcompat/view/menu/qv0;->B(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v12

    if-nez v12, :cond_3

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-static {v13}, Landroidx/appcompat/view/menu/y3;->c(Landroid/content/ComponentName;)Z

    move-result v13

    if-eqz v13, :cond_8

    :cond_3
    invoke-static {}, Landroidx/appcompat/view/menu/y8;->k()Z

    move-result v13

    const-wide/32 v14, 0x7fffffff

    if-eqz v13, :cond_4

    and-long/2addr v10, v14

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v2, v9

    goto :goto_0

    :cond_4
    and-long/2addr v10, v14

    long-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v9

    :goto_0
    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->j()Landroidx/appcompat/view/menu/dv0;

    move-result-object v9

    if-nez v7, :cond_5

    const/4 v10, 0x0

    goto :goto_1

    :cond_5
    invoke-interface {v7}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    :goto_1
    invoke-virtual {v9, v4, v10, v5, v8}, Landroidx/appcompat/view/menu/dv0;->g(Landroid/content/Intent;Landroid/os/IBinder;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    if-eqz v7, :cond_7

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-nez v8, :cond_6

    if-eqz v12, :cond_6

    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v10, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_6
    invoke-static {v7, v4}, Landroidx/appcompat/view/menu/ys0;->k(Landroid/app/IServiceConnection;Landroid/content/Intent;)Landroid/app/IServiceConnection;

    move-result-object v4

    aput-object v4, v2, v6

    sget-object v6, Landroidx/appcompat/view/menu/m90$b$a;->b:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/go0$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_7

    sget-object v7, Landroidx/appcompat/view/menu/m90$b;->b:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v6, v4}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    if-eqz v5, :cond_8

    aput-object v5, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_8
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->h()Landroidx/appcompat/view/menu/yu0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/yu0;->z()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->h()Landroidx/appcompat/view/menu/yu0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/yu0;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
