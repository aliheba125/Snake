.class public Landroidx/appcompat/view/menu/av$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/av;->z0(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/av;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/av;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/av$d;->a:Landroidx/appcompat/view/menu/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroidx/appcompat/view/menu/a90;Landroidx/lifecycle/f$a;)V
    .locals 0

    sget-object p1, Landroidx/lifecycle/f$a;->ON_STOP:Landroidx/lifecycle/f$a;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/av$d;->a:Landroidx/appcompat/view/menu/av;

    iget-object p1, p1, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->cancelPendingInputEvents()V

    :cond_0
    return-void
.end method
