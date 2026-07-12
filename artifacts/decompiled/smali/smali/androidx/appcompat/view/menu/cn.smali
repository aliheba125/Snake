.class public final synthetic Landroidx/appcompat/view/menu/cn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/fn;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/fn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/cn;->m:Landroidx/appcompat/view/menu/fn;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/cn;->m:Landroidx/appcompat/view/menu/fn;

    invoke-static {v0}, Landroidx/appcompat/view/menu/fn;->A(Landroidx/appcompat/view/menu/fn;)V

    return-void
.end method
