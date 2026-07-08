.class public final synthetic Landroidx/appcompat/view/menu/sv1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/ey0;


# instance fields
.field public synthetic m:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/sv1;->m:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/sv1;->m:Landroid/content/Context;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ov1;->a(Landroid/content/Context;)Landroidx/appcompat/view/menu/rg0;

    move-result-object v0

    return-object v0
.end method
