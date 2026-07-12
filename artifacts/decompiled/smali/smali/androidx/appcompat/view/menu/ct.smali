.class public final synthetic Landroidx/appcompat/view/menu/ct;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/dt;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/dt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/ct;->a:Landroidx/appcompat/view/menu/dt;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ct;->a:Landroidx/appcompat/view/menu/dt;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/dt;->onBackPressed()V

    return-void
.end method
