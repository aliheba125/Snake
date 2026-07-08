.class public Landroidx/appcompat/view/menu/tz$f;
.super Landroidx/appcompat/view/menu/md0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/tz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/md0;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tz$f;->f()I

    move-result v0

    aget-object v1, p3, v0

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_7

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroidx/appcompat/view/menu/kl0;->j(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/y8;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->o()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, v2

    :cond_1
    const-string v2, "settings"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "media"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "telephony"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->u()Landroidx/appcompat/view/menu/qv0;

    move-result-object v2

    check-cast v1, Ljava/lang/String;

    const/16 v3, 0x80

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4}, Landroidx/appcompat/view/menu/qv0;->z(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->F2()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_4

    if-eqz v1, :cond_4

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->j()Landroidx/appcompat/view/menu/dv0;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v6

    invoke-virtual {v2, v3, v5, v6}, Landroidx/appcompat/view/menu/dv0;->q(Ljava/lang/String;Ljava/lang/String;I)Landroidx/appcompat/view/menu/p3;

    move-result-object v2

    iget v3, v2, Landroidx/appcompat/view/menu/p3;->o:I

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->F2()I

    move-result v5

    if-eq v3, v5, :cond_3

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->j()Landroidx/appcompat/view/menu/dv0;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/appcompat/view/menu/dv0;->f(Landroid/content/pm/ProviderInfo;)Landroid/os/IBinder;

    move-result-object v3

    goto :goto_0

    :cond_3
    move-object v3, v4

    :goto_0
    iget v2, v2, Landroidx/appcompat/view/menu/p3;->o:I

    invoke-static {v2}, Landroidx/appcompat/view/menu/kl0;->e(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tz$f;->g()I

    move-result v0

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->q()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p3, v0

    goto :goto_1

    :cond_4
    move-object v3, v4

    :goto_1
    if-nez v3, :cond_5

    return-object v4

    :cond_5
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Landroidx/appcompat/view/menu/qz$a;->b:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {p2, p1, v1}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p2, Landroidx/appcompat/view/menu/qz$a;->c:Landroidx/appcompat/view/menu/go0$b;

    new-instance p3, Landroidx/appcompat/view/menu/ig;

    invoke-direct {p3}, Landroidx/appcompat/view/menu/ig;-><init>()V

    sget-object v0, Landroidx/appcompat/view/menu/hg;->b:Landroidx/appcompat/view/menu/go0$e;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/go0$e;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->E2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroidx/appcompat/view/menu/ig;->m(Landroid/os/IInterface;Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_6
    :goto_2
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Landroidx/appcompat/view/menu/fg;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_7
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final f()I
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/y8;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final g()I
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tz$f;->f()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
