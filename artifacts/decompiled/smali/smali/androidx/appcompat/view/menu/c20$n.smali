.class public Landroidx/appcompat/view/menu/c20$n;
.super Landroidx/appcompat/view/menu/md0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/c20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/md0;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const-class p1, Landroid/content/Intent;

    invoke-static {p3, p1}, Landroidx/appcompat/view/menu/od0;->c([Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    const-class p2, Ljava/lang/String;

    invoke-static {p3, p2}, Landroidx/appcompat/view/menu/od0;->c([Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {}, Landroidx/appcompat/view/menu/y8;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Ljava/lang/Long;

    invoke-static {p3, v0}, Landroidx/appcompat/view/menu/od0;->c([Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->u()Landroidx/appcompat/view/menu/qv0;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toIntExact(J)I

    move-result p3

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v1

    invoke-virtual {v0, p1, p3, p2, v1}, Landroidx/appcompat/view/menu/qv0;->u(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-class v0, Ljava/lang/Integer;

    invoke-static {p3, v0}, Landroidx/appcompat/view/menu/od0;->c([Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->u()Landroidx/appcompat/view/menu/qv0;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v1

    invoke-virtual {v0, p1, p3, p2, v1}, Landroidx/appcompat/view/menu/qv0;->u(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object p1

    :goto_0
    invoke-static {}, Landroidx/appcompat/view/menu/y8;->c()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p1}, Landroidx/appcompat/view/menu/nh0;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    :cond_1
    return-object p1
.end method
