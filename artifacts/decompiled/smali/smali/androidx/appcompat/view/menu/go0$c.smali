.class public abstract Landroidx/appcompat/view/menu/go0$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/go0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/reflect/AccessibleObject;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/AccessibleObject;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/go0$c;->a:Ljava/lang/reflect/AccessibleObject;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/go0$c;->a:Ljava/lang/reflect/AccessibleObject;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
