.class public final synthetic Landroidx/appcompat/view/menu/w62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public synthetic m:Landroidx/appcompat/view/menu/s62;

.field public synthetic n:I

.field public synthetic o:Landroidx/appcompat/view/menu/pt1;

.field public synthetic p:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/s62;ILandroidx/appcompat/view/menu/pt1;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/w62;->m:Landroidx/appcompat/view/menu/s62;

    iput p2, p0, Landroidx/appcompat/view/menu/w62;->n:I

    iput-object p3, p0, Landroidx/appcompat/view/menu/w62;->o:Landroidx/appcompat/view/menu/pt1;

    iput-object p4, p0, Landroidx/appcompat/view/menu/w62;->p:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/w62;->m:Landroidx/appcompat/view/menu/s62;

    iget v1, p0, Landroidx/appcompat/view/menu/w62;->n:I

    iget-object v2, p0, Landroidx/appcompat/view/menu/w62;->o:Landroidx/appcompat/view/menu/pt1;

    iget-object v3, p0, Landroidx/appcompat/view/menu/w62;->p:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/appcompat/view/menu/s62;->d(ILandroidx/appcompat/view/menu/pt1;Landroid/content/Intent;)V

    return-void
.end method
