.class public Landroidx/appcompat/view/menu/u90$a;
.super Landroidx/appcompat/view/menu/md0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/u90;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
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

    aget-object v1, p3, v0

    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-static {}, Landroidx/appcompat/view/menu/nv0;->f()Landroidx/appcompat/view/menu/nv0;

    move-result-object v2

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v3

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->E2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/view/menu/nv0;->i(ILjava/lang/String;)Landroidx/appcompat/view/menu/p6;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/p6;->b()Landroid/location/Location;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aput-object v1, p3, v0

    goto :goto_0

    :cond_0
    instance-of v1, v1, Landroid/location/Location;

    if-eqz v1, :cond_1

    invoke-static {}, Landroidx/appcompat/view/menu/nv0;->f()Landroidx/appcompat/view/menu/nv0;

    move-result-object v1

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v2

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->E2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/view/menu/nv0;->i(ILjava/lang/String;)Landroidx/appcompat/view/menu/p6;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/p6;->b()Landroid/location/Location;

    move-result-object v1

    aput-object v1, p3, v0

    :cond_1
    :goto_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
