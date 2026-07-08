.class public final Landroidx/appcompat/view/menu/z32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/r32;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/r32;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/z32;->m:Landroidx/appcompat/view/menu/r32;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/z32;->m:Landroidx/appcompat/view/menu/r32;

    invoke-static {v0}, Landroidx/appcompat/view/menu/r32;->B(Landroidx/appcompat/view/menu/r32;)Landroidx/appcompat/view/menu/t32;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/view/menu/r32;->e:Landroidx/appcompat/view/menu/t32;

    return-void
.end method
