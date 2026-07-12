.class public Landroidx/appcompat/view/menu/tz$y;
.super Landroidx/appcompat/view/menu/md0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/tz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "y"
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

    const/4 v0, 0x1

    aget-object v0, p3, v0

    check-cast v0, Landroid/content/Intent;

    const/4 v1, 0x2

    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->u()Landroidx/appcompat/view/menu/qv0;

    move-result-object v2

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v1, v3}, Landroidx/appcompat/view/menu/qv0;->B(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/tz$y;->f()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :cond_1
    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->j()Landroidx/appcompat/view/menu/dv0;

    move-result-object p1

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result p2

    invoke-virtual {p1, v0, v1, v4, p2}, Landroidx/appcompat/view/menu/dv0;->E(Landroid/content/Intent;Ljava/lang/String;ZI)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method

.method public f()I
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/y8;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method
