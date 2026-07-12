.class public final synthetic Landroidx/appcompat/view/menu/v70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/w70;

.field public final synthetic n:Landroidx/appcompat/view/menu/b80$c;

.field public final synthetic o:Landroid/view/KeyEvent;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/w70;Landroidx/appcompat/view/menu/b80$c;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/v70;->m:Landroidx/appcompat/view/menu/w70;

    iput-object p2, p0, Landroidx/appcompat/view/menu/v70;->n:Landroidx/appcompat/view/menu/b80$c;

    iput-object p3, p0, Landroidx/appcompat/view/menu/v70;->o:Landroid/view/KeyEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/v70;->m:Landroidx/appcompat/view/menu/w70;

    iget-object v1, p0, Landroidx/appcompat/view/menu/v70;->n:Landroidx/appcompat/view/menu/b80$c;

    iget-object v2, p0, Landroidx/appcompat/view/menu/v70;->o:Landroid/view/KeyEvent;

    invoke-static {v0, v1, v2}, Landroidx/appcompat/view/menu/w70;->b(Landroidx/appcompat/view/menu/w70;Landroidx/appcompat/view/menu/b80$c;Landroid/view/KeyEvent;)V

    return-void
.end method
