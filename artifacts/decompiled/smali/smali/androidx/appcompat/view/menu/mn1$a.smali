.class public abstract Landroidx/appcompat/view/menu/mn1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/mn1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "a"
.end annotation


# instance fields
.field public final m:J

.field public final n:J

.field public final o:Z

.field public final synthetic p:Landroidx/appcompat/view/menu/mn1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/mn1;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/view/menu/mn1$a;-><init>(Landroidx/appcompat/view/menu/mn1;Z)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/mn1;Z)V
    .locals 2

    iput-object p1, p0, Landroidx/appcompat/view/menu/mn1$a;->p:Landroidx/appcompat/view/menu/mn1;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v0, p1, Landroidx/appcompat/view/menu/mn1;->b:Landroidx/appcompat/view/menu/cc;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/cc;->a()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/appcompat/view/menu/mn1$a;->m:J

    .line 4
    iget-object p1, p1, Landroidx/appcompat/view/menu/mn1;->b:Landroidx/appcompat/view/menu/cc;

    invoke-interface {p1}, Landroidx/appcompat/view/menu/cc;->b()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/appcompat/view/menu/mn1$a;->n:J

    iput-boolean p2, p0, Landroidx/appcompat/view/menu/mn1$a;->o:Z

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/mn1$a;->p:Landroidx/appcompat/view/menu/mn1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mn1;->A(Landroidx/appcompat/view/menu/mn1;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mn1$a;->b()V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mn1$a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/mn1$a;->p:Landroidx/appcompat/view/menu/mn1;

    const/4 v2, 0x0

    iget-boolean v3, p0, Landroidx/appcompat/view/menu/mn1$a;->o:Z

    invoke-static {v1, v0, v2, v3}, Landroidx/appcompat/view/menu/mn1;->o(Landroidx/appcompat/view/menu/mn1;Ljava/lang/Exception;ZZ)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mn1$a;->b()V

    return-void
.end method
