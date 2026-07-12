.class public final synthetic Landroidx/appcompat/view/menu/xj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/lifecycle/l;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/xj0;->m:Landroidx/lifecycle/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/xj0;->m:Landroidx/lifecycle/l;

    invoke-static {v0}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/l;)V

    return-void
.end method
