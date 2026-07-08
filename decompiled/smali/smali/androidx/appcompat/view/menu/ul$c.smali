.class public Landroidx/appcompat/view/menu/ul$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/ul;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/ul;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ul;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/ul$c;->a:Landroidx/appcompat/view/menu/ul;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Landroidx/appcompat/view/menu/ul$c;->a:Landroidx/appcompat/view/menu/ul;

    invoke-static {p1}, Landroidx/appcompat/view/menu/ul;->f1(Landroidx/appcompat/view/menu/ul;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/ul$c;->a:Landroidx/appcompat/view/menu/ul;

    invoke-static {p1}, Landroidx/appcompat/view/menu/ul;->f1(Landroidx/appcompat/view/menu/ul;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/ul;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
