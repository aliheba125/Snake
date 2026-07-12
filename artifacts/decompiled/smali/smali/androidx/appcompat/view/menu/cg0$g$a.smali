.class public final Landroidx/appcompat/view/menu/cg0$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/cg0$g;->a(Landroidx/appcompat/view/menu/fw;Landroidx/appcompat/view/menu/fw;Landroidx/appcompat/view/menu/dw;Landroidx/appcompat/view/menu/dw;)Landroid/window/OnBackInvokedCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/fw;

.field public final synthetic b:Landroidx/appcompat/view/menu/fw;

.field public final synthetic c:Landroidx/appcompat/view/menu/dw;

.field public final synthetic d:Landroidx/appcompat/view/menu/dw;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/fw;Landroidx/appcompat/view/menu/fw;Landroidx/appcompat/view/menu/dw;Landroidx/appcompat/view/menu/dw;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/cg0$g$a;->a:Landroidx/appcompat/view/menu/fw;

    iput-object p2, p0, Landroidx/appcompat/view/menu/cg0$g$a;->b:Landroidx/appcompat/view/menu/fw;

    iput-object p3, p0, Landroidx/appcompat/view/menu/cg0$g$a;->c:Landroidx/appcompat/view/menu/dw;

    iput-object p4, p0, Landroidx/appcompat/view/menu/cg0$g$a;->d:Landroidx/appcompat/view/menu/dw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackCancelled()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/cg0$g$a;->d:Landroidx/appcompat/view/menu/dw;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/dw;->d()Ljava/lang/Object;

    return-void
.end method

.method public onBackInvoked()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/cg0$g$a;->c:Landroidx/appcompat/view/menu/dw;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/dw;->d()Ljava/lang/Object;

    return-void
.end method

.method public onBackProgressed(Landroid/window/BackEvent;)V
    .locals 2

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/cg0$g$a;->b:Landroidx/appcompat/view/menu/fw;

    new-instance v1, Landroidx/appcompat/view/menu/h7;

    invoke-direct {v1, p1}, Landroidx/appcompat/view/menu/h7;-><init>(Landroid/window/BackEvent;)V

    invoke-interface {v0, v1}, Landroidx/appcompat/view/menu/fw;->i(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onBackStarted(Landroid/window/BackEvent;)V
    .locals 2

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/cg0$g$a;->a:Landroidx/appcompat/view/menu/fw;

    new-instance v1, Landroidx/appcompat/view/menu/h7;

    invoke-direct {v1, p1}, Landroidx/appcompat/view/menu/h7;-><init>(Landroid/window/BackEvent;)V

    invoke-interface {v0, v1}, Landroidx/appcompat/view/menu/fw;->i(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
