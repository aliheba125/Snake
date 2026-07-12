.class public Landroidx/appcompat/view/menu/c20$s;
.super Landroidx/appcompat/view/menu/md0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/c20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "s"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/md0;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Landroid/content/Intent;

    const/4 v1, 0x1

    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Landroidx/appcompat/view/menu/y8;->j()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    aget-object v2, p3, v3

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->u()Landroidx/appcompat/view/menu/qv0;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Math;->toIntExact(J)I

    move-result v2

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v3

    invoke-virtual {v4, v0, v1, v2, v3}, Landroidx/appcompat/view/menu/qv0;->A(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    aget-object v2, p3, v3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->u()Landroidx/appcompat/view/menu/qv0;

    move-result-object v3

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v4

    invoke-virtual {v3, v0, v1, v2, v4}, Landroidx/appcompat/view/menu/qv0;->A(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
