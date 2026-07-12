.class public final synthetic Landroidx/appcompat/view/menu/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroid/view/ViewGroup;

.field public final synthetic n:Landroid/view/View;

.field public final synthetic o:Landroidx/appcompat/view/menu/ck$a;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/appcompat/view/menu/ck$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/bk;->m:Landroid/view/ViewGroup;

    iput-object p2, p0, Landroidx/appcompat/view/menu/bk;->n:Landroid/view/View;

    iput-object p3, p0, Landroidx/appcompat/view/menu/bk;->o:Landroidx/appcompat/view/menu/ck$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/bk;->m:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/appcompat/view/menu/bk;->n:Landroid/view/View;

    iget-object v2, p0, Landroidx/appcompat/view/menu/bk;->o:Landroidx/appcompat/view/menu/ck$a;

    invoke-static {v0, v1, v2}, Landroidx/appcompat/view/menu/ck$a$a;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/appcompat/view/menu/ck$a;)V

    return-void
.end method
