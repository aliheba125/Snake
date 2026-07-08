.class public Landroidx/appcompat/view/menu/ul$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/ul;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/ul;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ul;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/ul$a;->m:Landroidx/appcompat/view/menu/ul;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ul$a;->m:Landroidx/appcompat/view/menu/ul;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ul;->g1(Landroidx/appcompat/view/menu/ul;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/ul$a;->m:Landroidx/appcompat/view/menu/ul;

    invoke-static {v1}, Landroidx/appcompat/view/menu/ul;->f1(Landroidx/appcompat/view/menu/ul;)Landroid/app/Dialog;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
