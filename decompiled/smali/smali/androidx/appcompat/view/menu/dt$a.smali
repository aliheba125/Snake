.class public Landroidx/appcompat/view/menu/dt$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/dt;->M()Landroid/window/OnBackInvokedCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/dt;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/dt;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/dt$a;->a:Landroidx/appcompat/view/menu/dt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackCancelled()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/dt$a;->a:Landroidx/appcompat/view/menu/dt;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/dt;->H()V

    return-void
.end method

.method public onBackInvoked()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/dt$a;->a:Landroidx/appcompat/view/menu/dt;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/dt;->I()V

    return-void
.end method

.method public onBackProgressed(Landroid/window/BackEvent;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/dt$a;->a:Landroidx/appcompat/view/menu/dt;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/dt;->X(Landroid/window/BackEvent;)V

    return-void
.end method

.method public onBackStarted(Landroid/window/BackEvent;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/dt$a;->a:Landroidx/appcompat/view/menu/dt;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/dt;->T(Landroid/window/BackEvent;)V

    return-void
.end method
