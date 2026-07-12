.class public abstract Landroidx/appcompat/view/menu/fg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/fg;->a:Ljava/util/Set;

    return-void
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Landroidx/appcompat/view/menu/y8;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/appcompat/view/menu/mt0;->b:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/go0$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v0, Landroidx/appcompat/view/menu/jt0;->b:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v0, p0, v1}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/lt0;->b:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v0, p0, v1}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static b()V
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/ot0;->b:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/go0$b;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/appcompat/view/menu/fg;->a(Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/nt0;->b:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/go0$b;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/appcompat/view/menu/fg;->a(Ljava/lang/Object;)V

    :cond_1
    sget-object v0, Landroidx/appcompat/view/menu/kt0;->b:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/go0$b;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroidx/appcompat/view/menu/fg;->a(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public static c()V
    .locals 7

    invoke-static {}, Landroidx/appcompat/view/menu/fg;->b()V

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->m()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->D()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/t1;->j:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/go0$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/appcompat/view/menu/t1$e;->b:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/go0$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    if-eqz v2, :cond_0

    array-length v3, v2

    if-gtz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    aget-object v2, v2, v3

    sget-object v3, Landroidx/appcompat/view/menu/fg;->a:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v3, Landroidx/appcompat/view/menu/t1$e;->c:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v3, v1}, Landroidx/appcompat/view/menu/go0$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IInterface;

    sget-object v4, Landroidx/appcompat/view/menu/t1$e;->c:Landroidx/appcompat/view/menu/go0$b;

    new-instance v5, Landroidx/appcompat/view/menu/ig;

    invoke-direct {v5}, Landroidx/appcompat/view/menu/ig;-><init>()V

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->o()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroidx/appcompat/view/menu/ig;->m(Landroid/os/IInterface;Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Landroidx/appcompat/view/menu/t1$e;->b:Landroidx/appcompat/view/menu/go0$b;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Landroidx/appcompat/view/menu/y8;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/appcompat/view/menu/gg;->b:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/go0$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/qz$a;->c:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/go0$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    :goto_0
    instance-of v1, v0, Ljava/lang/reflect/Proxy;

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v1, "settings"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_1
    const-string v1, "telephony"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "media"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_0

    new-instance p1, Landroidx/appcompat/view/menu/ig;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/ig;-><init>()V

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/menu/ig;->m(Landroid/os/IInterface;Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    goto :goto_2

    :pswitch_0
    new-instance p1, Landroidx/appcompat/view/menu/wy0;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/wy0;-><init>()V

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/menu/wy0;->l(Landroid/os/IInterface;Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    :goto_2
    invoke-static {}, Landroidx/appcompat/view/menu/y8;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Landroidx/appcompat/view/menu/gg;->b:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    sget-object v0, Landroidx/appcompat/view/menu/qz$a;->c:Landroidx/appcompat/view/menu/go0$b;

    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/view/menu/go0$b;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x62f6fe4 -> :sswitch_2
        0x2eaeb418 -> :sswitch_1
        0x5582bc23 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
