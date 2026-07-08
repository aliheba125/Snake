.class public final synthetic Landroidx/appcompat/view/menu/dl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Ljava/util/concurrent/Callable;

.field public final synthetic n:Landroidx/appcompat/view/menu/gl$b;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Callable;Landroidx/appcompat/view/menu/gl$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/dl;->m:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Landroidx/appcompat/view/menu/dl;->n:Landroidx/appcompat/view/menu/gl$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/dl;->m:Ljava/util/concurrent/Callable;

    iget-object v1, p0, Landroidx/appcompat/view/menu/dl;->n:Landroidx/appcompat/view/menu/gl$b;

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/fl;->l(Ljava/util/concurrent/Callable;Landroidx/appcompat/view/menu/gl$b;)V

    return-void
.end method
