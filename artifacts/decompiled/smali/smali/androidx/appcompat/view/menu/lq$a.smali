.class public final synthetic Landroidx/appcompat/view/menu/lq$a;
.super Landroidx/appcompat/view/menu/fx;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/fw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/lq;->a(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/pf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const/4 v1, 0x1

    const-class v3, Landroidx/appcompat/view/menu/ee0;

    const-string v4, "accept"

    const-string v5, "accept(Landroidx/window/extensions/layout/WindowLayoutInfo;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/view/menu/fx;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/window/extensions/layout/WindowLayoutInfo;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/lq$a;->k(Landroidx/window/extensions/layout/WindowLayoutInfo;)V

    sget-object p1, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    return-object p1
.end method

.method public final k(Landroidx/window/extensions/layout/WindowLayoutInfo;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/l9;->n:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/view/menu/ee0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/ee0;->a(Landroidx/window/extensions/layout/WindowLayoutInfo;)V

    return-void
.end method
