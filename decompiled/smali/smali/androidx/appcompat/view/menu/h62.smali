.class public final Landroidx/appcompat/view/menu/h62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroid/content/ComponentName;

.field public final synthetic n:Landroidx/appcompat/view/menu/d62;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/d62;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/h62;->n:Landroidx/appcompat/view/menu/d62;

    iput-object p2, p0, Landroidx/appcompat/view/menu/h62;->m:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/h62;->n:Landroidx/appcompat/view/menu/d62;

    iget-object v0, v0, Landroidx/appcompat/view/menu/d62;->n:Landroidx/appcompat/view/menu/h42;

    iget-object v1, p0, Landroidx/appcompat/view/menu/h62;->m:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/h42;->M(Landroidx/appcompat/view/menu/h42;Landroid/content/ComponentName;)V

    return-void
.end method
