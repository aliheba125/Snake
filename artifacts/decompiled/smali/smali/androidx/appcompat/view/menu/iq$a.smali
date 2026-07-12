.class public final Landroidx/appcompat/view/menu/iq$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/iq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/lj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/view/menu/iq$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/window/extensions/layout/WindowLayoutComponent;Landroidx/appcompat/view/menu/qf;)Landroidx/appcompat/view/menu/b81;
    .locals 2

    const-string v0, "component"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/appcompat/view/menu/nq;->a:Landroidx/appcompat/view/menu/nq;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/nq;->a()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    new-instance p2, Landroidx/appcompat/view/menu/mq;

    invoke-direct {p2, p1}, Landroidx/appcompat/view/menu/mq;-><init>(Landroidx/window/extensions/layout/WindowLayoutComponent;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Landroidx/appcompat/view/menu/lq;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/view/menu/lq;-><init>(Landroidx/window/extensions/layout/WindowLayoutComponent;Landroidx/appcompat/view/menu/qf;)V

    move-object p2, v0

    goto :goto_0

    :cond_1
    new-instance p2, Landroidx/appcompat/view/menu/kq;

    invoke-direct {p2}, Landroidx/appcompat/view/menu/kq;-><init>()V

    :goto_0
    return-object p2
.end method
