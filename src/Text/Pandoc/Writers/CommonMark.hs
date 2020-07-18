{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ViewPatterns      #-}
{- |
   Module      : Text.Pandoc.Writers.CommonMark
   Copyright   : Copyright (C) 2015-2020 John MacFarlane
   License     : GNU GPL, version 2 or above

   Maintainer  : John MacFarlane <jgm@berkeley.edu>
   Stability   : alpha
   Portability : portable

Conversion of 'Pandoc' documents to CommonMark.

CommonMark:  <http://commonmark.org>
-}
module Text.Pandoc.Writers.CommonMark (writeCommonMark) where

import Text.Pandoc.Writers.Markdown (writeMarkdown)
import Text.Pandoc.Definition
import Text.Pandoc.Options
import Text.Pandoc.Class.PandocMonad
import Data.Text (Text)

-- | Convert Pandoc to CommonMark.
writeCommonMark :: PandocMonad m => WriterOptions -> Pandoc -> m Text
writeCommonMark = writeMarkdown
